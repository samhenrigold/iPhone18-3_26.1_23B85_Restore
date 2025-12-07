void *sub_25F2A7804(uint64_t a1)
{
  swift_beginAccess();

  sub_25F2A67F4(v1);
  v3 = v2;

  v4 = sub_25F2A7B10(v3);

  return v4;
}

id sub_25F2A7880(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_25F2A7CB0(0, &qword_27FD55BF0, 0x277D82BB8);
    v4 = sub_25F304A5C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CoreAnalyticsLogger.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_25F2A7998(_BYTE *a1@<X8>)
{
  v3 = *(*v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 20));
}

void sub_25F2A79E4(char *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 20));
}

void (*sub_25F2A7A2C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = CoreAnalyticsLogger.hints.modify(v2);
  return sub_25F1DC004;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25F2A7B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = (a1 + 48);
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    v8 = *(v2 - 2);
    v7 = *(v2 - 1);
    v9 = *v2;

    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_25F219234(v8, v7);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_25F21D120(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_25F219234(v8, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_25F21F410();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v4 = v12;

      v5 = v3[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v10;

      goto LABEL_4;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v3[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v7;
    *(v3[7] + 8 * v12) = v10;
    v21 = v3[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    v3[2] = v22;
LABEL_4:
    v2 += 3;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2A7CB0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25F2A7CF8(uint64_t a1)
{
  sub_25F3054DC();
  swift_getTupleTypeMetadata2();
  v1 = sub_25F3052DC();
  sub_25F3052DC();
  return v1;
}

uint64_t AsyncStream.Sink.init(_:replaysHistory:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v12[0] = sub_25F2A7CF8(a2);
  v12[1] = v6;
  v13 = v7 & 1;
  v9 = _s4SinkV5StateVMa(0, a2, v7, v8);
  v10 = sub_25F203E0C(v12, v9);

  *a3 = v10;
  *(a3 + 8) = a1;
  return result;
}

uint64_t sub_25F2A7DFC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v6 = *(a3 + 16);
  v7 = sub_25F3054DC();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v25 = sub_25F30552C();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v23 - v11;
  v13 = *v4;
  v24 = *(v4 + 8);
  nullsub_2();
  sub_25F30547C();
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v14 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v15 = *(v14 + 2);
  *(v14 + 2) = v15 + 1;
  os_unfair_lock_unlock(v14 + 6);
  v23 = &v23;
  v34 = v13;
  *&v28 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v28 + 1) = 128;
  v31 = "asyncStream(bufferingPolicy:emitInitialValue:)";
  v32 = 46;
  v29 = 2;
  v30 = xmmword_25F312F90;
  v33 = 2;
  MEMORY[0x28223BE20](v16);
  *(&v23 - 4) = v6;
  *(&v23 - 3) = a2;
  *(&v23 - 2) = v9;
  *(&v23 - 1) = v15;
  _s4SinkV5StateVMa(255, v6, v17, v18);
  v19 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v28, sub_25F2AA1C8, (&v23 - 6), v19, MEMORY[0x277D839B0], WitnessTable);

  if (v35 == 1)
  {
    sub_25F3054CC();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v13;
  *(v21 + 32) = v24;
  *(v21 + 40) = v15;

  sub_25F30549C();
  (*(v10 + 32))(v27, v12, v25);
  return (*(v26 + 8))(v9, v7);
}

uint64_t sub_25F2A815C@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v40 = a6;
  v39 = a4;
  v46 = a3;
  v42 = a1;
  v43 = a2;
  v45 = sub_25F3054DC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v37 = (&v36 - v7);
  v44 = sub_25F30548C();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v36 - v8;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  v36 = v22;
  MEMORY[0x28223BE20](v19);
  v24 = &v36 - v23;
  (*(v11 + 16))(v14, v43, v10);
  if ((*(v15 + 48))(v14, 1, a5) != 1)
  {
LABEL_12:
    (*(v15 + 32))(v24, v14, a5);
    (*(v15 + 16))(v18, v24, a5);
    v30 = v45;
    v29 = v46;
    sub_25F3054BC();
    (*(v41 + 8))(v9, v44);
    result = (*(v15 + 8))(v24, a5);
    v31 = v29;
    v32 = *(v42 + 16);
    if (v32)
    {
LABEL_14:
      *v40 = v32;
      return result;
    }

LABEL_13:
    v33 = *(TupleTypeMetadata2 + 48);
    v34 = v37;
    *v37 = v39;
    (*(*(v30 - 8) + 16))(v34 + v33, v31, v30);
    sub_25F30539C();
    result = sub_25F30533C();
    goto LABEL_14;
  }

  v25 = v41;
  (*(v11 + 8))(v14, v10);
  v26 = v42;
  v14 = *(v42 + 8);

  if (!sub_25F30531C())
  {

LABEL_16:
    v30 = v45;
    v31 = v46;
    v32 = *(v26 + 16);
    if (v32)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v18 = 0;
  v43 = (v15 + 16);
  v27 = (v25 + 8);
  while (1)
  {
    v28 = sub_25F3052FC();
    sub_25F30528C();
    if (v28)
    {
      (*(v15 + 16))(v21, &v14[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v18], a5);
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    result = sub_25F30601C();
    if (v36 != 8)
    {
      break;
    }

    v47 = result;
    (*v43)(v21, &v47, a5);
    swift_unknownObjectRelease();
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_6:
    sub_25F3054BC();
    (*v27)(v9, v44);
    ++v18;
    if (v24 == sub_25F30531C())
    {

      v26 = v42;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2A8680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a2;
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v9 + 1) = 128;
  v10 = 2;
  v11 = xmmword_25F312FA0;
  v12 = "asyncStream(bufferingPolicy:emitInitialValue:)";
  v13 = 46;
  v14 = 2;
  v8[2] = a5;
  v8[3] = a4;
  _s4SinkV5StateVMa(255, a5, a3, a4);
  v5 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v9, sub_25F2AA1F8, v8, v5, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_25F2A8774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F3054DC();
  swift_getTupleTypeMetadata2();
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_25F30599C();
}

uint64_t AsyncStream.Sink.asyncStream(bufferingPolicy:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v3 + 8);
  v13 = *v3;
  v14 = v11;
  (*(*(v6 - 8) + 56))(&v13 - v9, 1, 1, v6);
  sub_25F2A7DFC(v10, a2, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t AsyncStream.Sink.yield(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v20 = *v4;
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v14 + 1) = 128;
  v15 = 2;
  v16 = xmmword_25F312FB0;
  v17 = "yield(_:)";
  v18 = 9;
  v19 = 2;
  v10 = *(a2 + 16);
  v11 = v20;
  v12 = v5;
  v13 = a1;
  _s4SinkV5StateVMa(255, v10, a3, a4);
  v6 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v14, sub_25F2A9C5C, &v9, v6, MEMORY[0x277D839B0], WitnessTable);

  return v21;
}

uint64_t sub_25F2A8A90(_BYTE *a1, uint64_t a2, char a3)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57980, &qword_25F313110);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57988, &qword_25F313118);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-v10];
  v23 = a1[16];
  if ((v23 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 1);
    v13 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v12 = sub_25F2F1400((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v16;
      *(a1 + 1) = v12;
      v5 = v13;
LABEL_7:
      v13 = *a1;
      v17 = *(*a1 + 16);
      if (!v17)
      {
        break;
      }

      v18 = v5;
      v19 = 0;
      v12 = (v18 + 8);
      while (v19 < *(v13 + 16))
      {
        sub_25F2AA0D4(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19++, v11);
        v20 = *(v8 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD57990, qword_25F313120);
        a1 = &v11[v20];
        sub_25F3054BC();
        (*v12)(v7, v24);
        sub_25F2AA144(v11);
        if (v17 == v19)
        {
          return v23 ^ 1u;
        }
      }

      __break(1u);
LABEL_13:
      v12 = sub_25F2F1400(0, *(v12 + 2) + 1, 1, v12);
    }
  }

  return v23 ^ 1u;
}

uint64_t sub_25F2A8D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, char *a3@<X8>)
{
  result = MEMORY[0x28223BE20](a1);
  if (*(result + 16))
  {
    v11 = 0;
  }

  else
  {
    if (v7)
    {
      (*(v10 + 16))(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8, a2);
      sub_25F30539C();
      result = sub_25F30533C();
    }

    v13[1] = *a1;
    MEMORY[0x28223BE20](result);
    v13[-2] = a2;
    v13[-1] = v12;
    sub_25F3054DC();

    swift_getTupleTypeMetadata2();
    sub_25F30539C();
    swift_getWitnessTable();
    sub_25F3051BC();

    v11 = 1;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_25F2A8EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F30548C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  sub_25F3054DC();
  swift_getTupleTypeMetadata2();
  (*(v5 + 16))(v7, a2, a3);
  sub_25F3054BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t AsyncStream.Sink.yield<A>()()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 9);
  sub_25F2A9C80(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 9);
  return v3;
}

Swift::Void __swiftcall AsyncStream.Sink.finish()()
{
  v15 = *v3;
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v9 + 1) = 128;
  v10 = 2;
  v11 = xmmword_25F312FC0;
  v12 = "finish()";
  v13 = 8;
  v14 = 2;
  v8 = *(v0 + 16);
  _s4SinkV5StateVMa(255, v8, v1, v2);
  v4 = sub_25F30476C();
  sub_25F3054DC();
  v5 = sub_25F30539C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v9, sub_25F2A9CB8, v7, v4, v5, WitnessTable);

  *&v9 = v16;
  swift_getWitnessTable();
  sub_25F3051BC();
}

uint64_t sub_25F2A927C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  *(a1 + 16) = 1;
  KeyPath = swift_getKeyPath();
  v5 = sub_25F3054DC();

  swift_getTupleTypeMetadata2();
  v6 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25F1C1AC4(sub_25F2AA0B4, KeyPath, v6, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  *a3 = v9;
  return result;
}

uint64_t sub_25F2A93AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x277D84DE8];
  v4 = *(*a2 + *MEMORY[0x277D84DE8]);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  (*(v5 + 16))(v13 - v9);
  v11 = *(v4 + 48);
  *v8 = *v10;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v8[v11], &v10[v11]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t AsyncStreamObservable.wrappedValue.getter(uint64_t a1)
{
  v11 = *(v1 + 16);
  *&v5 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v5 + 1) = 128;
  v6 = 2;
  v7 = xmmword_25F312FD0;
  v8 = "wrappedValue";
  v9 = 12;
  v10 = 2;
  v2 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  return SynchronousAccessProviding<>.peek(callsite:)(&v5, v2, WitnessTable);
}

uint64_t AsyncStreamObservable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_25F2A9D18(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*AsyncStreamObservable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  AsyncStreamObservable.wrappedValue.getter(a2);
  return sub_25F2A977C;
}

void sub_25F2A977C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_25F2A9D18(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_25F2A9D18((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AsyncStreamObservable.init(wrappedValue:emitsInitialValue:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  default argument 0 of AsyncStream.Sink.init(_:replaysHistory:)();
  AsyncStream.Sink.init(_:replaysHistory:)(0, a4, a5);
  *(a5 + 24) = a2;
  v10 = sub_25F203E0C(a1, a4);
  (*(*(a4 - 8) + 8))(a1, a4);
  *(a5 + 16) = v10;
  v13 = *(type metadata accessor for AsyncStreamObservable(0, a4, v11, v12) + 36);
  v14 = sub_25F3054AC();
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v13, a3, v14);
}

uint64_t AsyncStreamObservable.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = *(a1 + 16);
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = sub_25F3054AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  LOBYTE(v11) = *(v2 + 8);
  v19 = *v2;
  v20 = v11;
  (*(v10 + 16))(v12, v2 + *(a1 + 36), v9);
  if (*(v2 + 24) == 1)
  {

    AsyncStreamObservable.wrappedValue.getter(a1);
    (*(*(v4 - 8) + 56))(v8, 0, 1, v4);
  }

  else
  {
    (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
  }

  v15 = type metadata accessor for AsyncStream.Sink(0, v4, v13, v14);
  sub_25F2A7DFC(v8, v15, v18);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

Swift::Void __swiftcall AsyncStreamObservable.finish()()
{
  type metadata accessor for AsyncStream.Sink(0, *(v0 + 16), v1, v2);

  AsyncStream.Sink.finish()();
}

uint64_t sub_25F2A9C80@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F2A8A90(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_25F2A9D18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[2];
  v18 = v4;
  KeyPath = swift_getKeyPath();
  v9 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, a1, v9, WitnessTable);

  (*(v5 + 8))(v7, v4);
  v11 = *(v2 + 8);
  v19 = *v2;
  v20 = v11;
  v14 = type metadata accessor for AsyncStream.Sink(0, v4, v12, v13);

  AsyncStream.Sink.yield(_:)(a1, v14, v15, v16);
}

uint64_t sub_25F2A9ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2A9F14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25F2A9F5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F2A9F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AsyncStream.Sink(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_25F30476C();
    if (v6 <= 0x3F)
    {
      result = sub_25F3054AC();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F2AA078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2AA0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57988, &qword_25F313118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2AA144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57988, &qword_25F313118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F2AA2A8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v5 = sub_25F2E95EC(v7, a2, a3, a4);
  swift_retain_n();
  Future.observeFinish(_:)(sub_25F2AA410, v5);

  return v5;
}

uint64_t sub_25F2AA33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = a3;
  type metadata accessor for UncancelableFuture(0, *(*v8 + 80), a3, a4);
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = v14;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  swift_allocObject();

  return sub_25F2AA2A8(&v20, v8, v17, v18);
}

uint64_t static CommandLineCommand.shortUsage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CommandLineOptions(0, AssociatedTypeWitness, v3, v4);
  v9 = CommandLineOptions.shortUsage.getter(v5, v6, v7, v8);

  return v9;
}

uint64_t static CommandLineCommand.optionDescriptions.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&v14);
  v4 = v14;

  v13[5] = v4;
  v13[2] = a1;
  v13[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for CommandLineOption(255, AssociatedTypeWitness, v6, v7);
  v8 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25F1C1AC4(sub_25F2AA628, v13, v8, &type metadata for CommandLineOptionDescription, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  return v11;
}

double sub_25F2AA5C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;

  return result;
}

uint64_t static CommandLineCommand.run(with:printer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(a4 + 32);
  v26 = v4;
  v15(&v29, a3, a4);
  v28 = v29;
  v30 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = type metadata accessor for CommandLineOptions(0, AssociatedTypeWitness, v17, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  v21 = sub_25F2AA8B0();
  CommandLineOptions.parse<A>(_:into:)(&v30, v19, v20, v21, v14);
  if (v5)
  {
    (*(v27 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v23 = *(v27 + 8);
    v23(v12, AssociatedTypeWitness);

    (*(a4 + 40))(v14, v25, a3, a4);
    return (v23)(v14, AssociatedTypeWitness);
  }
}

unint64_t sub_25F2AA8B0()
{
  result = qword_27FD57A18[0];
  if (!qword_27FD57A18[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57A18);
  }

  return result;
}

void *static TaskRef.running(_:)(uint64_t a1)
{
  v4 = a1;
  v1 = sub_25F30557C();
  WitnessTable = swift_getWitnessTable();
  return sub_25F2AE710(&v4, v1, WitnessTable);
}

void *static TaskRef.succeeded(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(*(v3 - 8) + 16))(&v10 - v6, a1, v3);
  swift_storeEnumTagMultiPayload();
  v8 = _s20PreviewsFoundationOS7TaskRefC9completedyACyxq_Gs6ResultOyxq_GFZ_0(v7);
  (*(v5 + 8))(v7, v4);
  return v8;
}

void *static TaskRef.failed(_:)(uint64_t a1)
{
  v3 = *(v1 + 88);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(*(v3 - 8) + 16))(&v10 - v6, a1, v3);
  swift_storeEnumTagMultiPayload();
  v8 = _s20PreviewsFoundationOS7TaskRefC9completedyACyxq_Gs6ResultOyxq_GFZ_0(v7);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t TaskRef.result.getter(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = *(v3 + 88);
  v2[16] = v5;
  v6 = *(v3 + 96);
  v2[17] = v6;
  v7 = sub_25F30678C();
  v2[18] = v7;
  v2[19] = swift_getFunctionTypeMetadata1();
  v2[20] = sub_25F30539C();
  v2[21] = swift_getTupleTypeMetadata2();
  v2[22] = swift_task_alloc();
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for TaskRef.State(0, v4, v5, v6);
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2AAEBC, 0, 0);
}

uint64_t sub_25F2AAEBC()
{
  v19 = v0;
  v1 = *(v0[12] + 16);
  v0[9] = v1;
  v0[29] = v1;
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v13 + 1) = 119;
  v14 = 2;
  v15 = xmmword_25F313200;
  v16 = "result";
  v17 = 6;
  v18 = 2;
  v2 = sub_25F30476C();
  v0[30] = v2;
  WitnessTable = swift_getWitnessTable();
  v0[31] = WitnessTable;
  SynchronousAccessProviding<>.peek(callsite:)(&v13, v2, WitnessTable);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v0[23] + 32))(v0[11], v0[28], v0[18]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[28];
    v7 = v0[16];
    v0[7] = v0[13];
    v0[8] = v7;
    swift_getExtendedExistentialTypeMetadata_unique();
    v0[32] = sub_25F305C1C();
    v0[33] = swift_getTupleTypeMetadata3();

    sub_25F1A42F8(v6, (v0 + 2));
    v8 = v0[5];
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    v12 = (*(v9 + 40) + **(v9 + 40));
    v10 = swift_task_alloc();
    v0[34] = v10;
    *v10 = v0;
    v10[1] = sub_25F2AB1B8;
    v11 = v0[26];

    return v12(v11, v8, v9);
  }
}

uint64_t sub_25F2AB1B8()
{

  return MEMORY[0x2822009F8](sub_25F2AB2B4, 0, 0);
}

uint64_t sub_25F2AB2B4()
{
  v39 = v0;
  *(v0 + 80) = *(v0 + 232);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v31 = *(v0 + 200);
  v32 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 104);
  *&v33 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v33 + 1) = 119;
  v34 = 2;
  v35 = xmmword_25F313210;
  v36 = "result";
  v37 = 6;
  v38 = 2;
  v7 = swift_task_alloc();
  v8 = *(v0 + 128);
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 40) = v1;

  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v33, sub_25F2AEAAC, v7, v28, v3, v29);

  v9 = *(v4 + *(v3 + 48));
  v30 = *(v2 + 32);
  v30(v31, v4, v5);
  (*(v2 + 16))(v32, v31, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v0 + 192);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 144);

    (*(v12 + 8))(v11, v13);
LABEL_9:
    v21 = *(v0 + 256);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v24 = *(v0 + 184);
    v25 = *(v0 + 144);
    v26 = *(*(v0 + 264) + 48);
    v30(*(v0 + 88), *(v0 + 200), v25);
    (*(v24 + 8))(v23, v25);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(*(v21 - 8) + 8))(v22 + v26, v21);

    v27 = *(v0 + 8);

    return v27();
  }

  (*(*(v0 + 112) + 32))(*(v0 + 120), v11, *(v0 + 104));
  if (!sub_25F30531C())
  {
LABEL_8:

    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    goto LABEL_9;
  }

  v14 = 0;
  v15 = v9 + 40;
  while (1)
  {
    v16 = sub_25F3052FC();
    result = sub_25F30528C();
    if ((v16 & 1) == 0)
    {
      break;
    }

    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_13;
    }

    v19 = *(v0 + 120);
    v20 = *(v15 - 8);

    v20(v19);

    ++v14;
    v15 += 16;
    if (v18 == sub_25F30531C())
    {
      goto LABEL_8;
    }
  }

  result = sub_25F30601C();
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25F2AB634@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a6;
  v73 = a2;
  v75 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v58 - v12;
  v13 = sub_25F30678C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v69 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v72 = &v58 - v20;
  v21 = sub_25F305C1C();
  v74 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v71 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  v76 = a3;
  v80 = a4;
  v66 = a5;
  v26 = type metadata accessor for TaskRef.State(0, a3, a4, a5);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v58 - v28;
  (*(v27 + 16))(&v58 - v28, a1, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v29, v13);
    swift_getFunctionTypeMetadata1();
    sub_25F30539C();
    v30 = *(swift_getTupleTypeMetadata2() + 48);
    v31 = v77;
    (*(v14 + 16))(v77, v17, v13);
    v32 = sub_25F3052DC();
    result = (*(v14 + 8))(v17, v13);
    *(v31 + v30) = v32;
    return result;
  }

  v67 = v13;
  v68 = v14;
  v34 = *(v27 + 8);
  v64 = a1;
  v34(a1, v26);
  v35 = v80;
  v78 = v76;
  v79 = v80;
  swift_getExtendedExistentialTypeMetadata_unique();
  swift_getFunctionTypeMetadata1();
  v63 = sub_25F30539C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v37 = *(TupleTypeMetadata3 + 48);
  v62 = *&v29[*(TupleTypeMetadata3 + 64)];
  v38 = v74;
  v39 = *(v74 + 32);
  v76 = v29;
  v39(v25, &v29[v37], v21);
  v40 = v71;
  (*(v38 + 16))(v71, v25, v21);
  v41 = v75;
  if ((*(v75 + 48))(v40, 1, v35) == 1)
  {
    v42 = *(v38 + 8);
    v42(v25, v21);
    v42(v40, v21);
    v43 = v67;
    v44 = v68;
    v45 = *(v68 + 16);
    v46 = v77;
    v47 = v73;
LABEL_10:
    v55 = v72;
    v45(v72, v47, v43);
    v56 = v76;
    v45(v64, v55, v43);
    goto LABEL_11;
  }

  v60 = v21;
  v61 = v26;
  v48 = v70;
  v71 = *(v41 + 32);
  (v71)(v70, v40, v80);
  v44 = v68;
  v49 = v69;
  v45 = *(v68 + 16);
  v47 = v73;
  v43 = v67;
  v45(v69, v73, v67);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v75 + 8))(v48, v80);
    (*(v74 + 8))(v25, v60);
    (*(v44 + 8))(v49, v43);
    v46 = v77;
    goto LABEL_10;
  }

  v59 = v45;
  v50 = v65;
  v51 = v80;
  (v71)(v65, v49, v80);
  v52 = Error.isCancelationError.getter(v51);
  v53 = *(v75 + 8);
  v53(v50, v51);
  (*(v74 + 8))(v25, v60);
  if ((v52 & 1) == 0)
  {
    v53(v70, v80);
    v46 = v77;
    v43 = v67;
    v44 = v68;
    v45 = v59;
    goto LABEL_10;
  }

  v54 = v72;
  (v71)(v72, v70, v80);
  v55 = v54;
  v43 = v67;
  swift_storeEnumTagMultiPayload();
  v56 = v76;
  v46 = v77;
  v44 = v68;
  v59(v64, v54, v43);
LABEL_11:
  swift_storeEnumTagMultiPayload();
  v57 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v44 + 32))(v46, v55, v43);
  *(v46 + v57) = v62;
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t TaskRef.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = *(v3 + 96);
  v2[8] = sub_25F30678C();
  v5 = swift_task_alloc();
  v2[9] = v5;
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v2;
  v6[1] = sub_25F2ABF48;

  return TaskRef.result.getter(v5);
}

uint64_t sub_25F2ABF48()
{

  return MEMORY[0x2822009F8](sub_25F2AC044, 0, 0);
}

uint64_t sub_25F2AC044()
{
  sub_25F218B1C(*(v0 + 64), *(v0 + 48), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TaskRef.cancel(withError:andCleanUpSuccessfulValue:)(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  v24 = a1;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v23[0] = v23 - v8;
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v39 = v3[2];
  *&v33 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v33 + 1) = 119;
  v34 = 2;
  v35 = xmmword_25F313220;
  v36 = "cancel(withError:andCleanUpSuccessfulValue:)";
  v37 = 44;
  v38 = 2;
  v27 = v7;
  v28 = *(v6 + 88);
  v29 = *(v6 + 96);
  v30 = v24;
  v24 = a2;
  v31 = a2;
  v32 = a3;
  v23[1] = a3;
  type metadata accessor for TaskRef.State(255, v7, v28, v29);
  v16 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  v18 = v16;
  v19 = v25;
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v33, sub_25F2AEACC, v26, v18, v9, WitnessTable);

  (*(v10 + 16))(v13, v15, v9);
  if ((*(v19 + 48))(v13, 1, v7) == 1)
  {
    v20 = *(v10 + 8);
    v20(v15, v9);
    return (v20)(v13, v9);
  }

  else
  {
    v22 = v23[0];
    (*(v19 + 32))(v23[0], v13, v7);
    v24(v22);
    (*(v19 + 8))(v22, v7);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_25F2AC508@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a8;
  v75 = a4;
  v73 = a3;
  v70 = a2;
  v78 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v72 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30678C();
  v71 = *(v13 - 1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v66 - v17;
  v77 = sub_25F305C1C();
  v80 = *(v77 - 8);
  v19 = MEMORY[0x28223BE20](v77);
  v86 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = v66 - v21;
  v74 = a7;
  v22 = type metadata accessor for TaskRef.State(0, a5, a6, a7);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v76 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = (v66 - v26);
  (*(v23 + 16))(v66 - v26, a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = a5;
    v29 = a6;
    v30 = v78;
    v31 = v71;
    (*(v71 + 32))(v18, v27, v13);
    (*(v31 + 16))(v16, v18, v13);
    v32 = v81;
    v33 = v82;
    v34 = v72;
    sub_25F218B1C(v13, v72, v81);
    if (v33)
    {
      (*(v30 + 8))(v34, v29);
      (*(v31 + 8))(v18, v13);
      return (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
    }

    else
    {
      (*(v31 + 8))(v18, v13);
      return (*(*(v28 - 8) + 56))(v32, 0, 1, v28);
    }
  }

  else
  {
    v68 = v23;
    v69 = v22;
    v36 = *(v23 + 8);
    v71 = a1;
    v36(a1, v22);
    v83[0] = a5;
    v83[1] = a6;
    swift_getExtendedExistentialTypeMetadata_unique();
    v72 = a5;
    FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
    sub_25F30539C();
    v37 = v77;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v39 = *(TupleTypeMetadata3 + 48);
    v66[1] = *(v27 + *(TupleTypeMetadata3 + 64));
    sub_25F1A42F8(v27, v83);
    v40 = v80;
    v41 = v27 + v39;
    v42 = v79;
    (*(v80 + 32))(v79, v41, v37);
    v66[0] = TupleTypeMetadata3;
    v43 = *(TupleTypeMetadata3 + 48);
    sub_25F1BF03C(v83, v76);
    v44 = *(v40 + 16);
    v45 = v86;
    v44(v86, v42, v37);
    v46 = v78;
    v47 = *(v78 + 48);
    v48 = v47(v45, 1, a6);
    v49 = a6;
    if (v48 == 1)
    {
      v50 = v76;
      v44((v76 + v43), v70, v37);
      v51 = v47(v86, 1, a6);
      v52 = v80;
      if (v51 != 1)
      {
        (*(v80 + 8))(v86, v37);
      }
    }

    else
    {
      v53 = v76;
      (*(v46 + 32))(v76 + v43, v86, a6);
      (*(v46 + 56))(v53 + v43, 0, 1, a6);
      v52 = v80;
      v50 = v53;
    }

    v54 = *(v66[0] + 64);
    v55 = FunctionTypeMetadata1;
    sub_25F3064EC();
    swift_allocObject();
    v56 = sub_25F30527C();
    v58 = v57;
    v59 = swift_allocObject();
    v60 = v72;
    *(v59 + 2) = v72;
    *(v59 + 3) = v49;
    v61 = v73;
    *(v59 + 4) = v74;
    *(v59 + 5) = v61;
    *(v59 + 6) = v75;
    *v58 = sub_25F2AF10C;
    v58[1] = v59;
    sub_25F1F7314(v56, v55);

    v62 = sub_25F3052BC();

    *(v50 + v54) = v62;
    v63 = v69;
    swift_storeEnumTagMultiPayload();
    (*(v68 + 32))(v71, v50, v63);
    v64 = v84;
    v65 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (*(v65 + 32))(v64, v65);
    (*(v52 + 8))(v79, v77);
    (*(*(v60 - 8) + 56))(v81, 1, 1, v60);
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }
}

uint64_t TaskRef.cancel(withError:)(void (*a1)(void))
{
  v3 = *v1;
  v4 = *v1;
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 80);
  *(v5 + 32) = *(v3 + 96);
  TaskRef.cancel(withError:andCleanUpSuccessfulValue:)(a1, nullsub_2, v5);
}

Swift::Void __swiftcall TaskRef.cancel()()
{
  v1 = *(*v0 + 88);
  v2 = sub_25F305C1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v6 - v4);
  (*(*(v1 - 8) + 56))(&v6 - v4, 1, 1, v1);
  TaskRef.cancel(withError:)(v5);
  (*(v3 + 8))(v5, v2);
}

uint64_t TaskRef.peek()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for TaskRef.State(0, v3, v4, *(*v1 + 96));
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v23 = v1[2];
  *&v17 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v17 + 1) = 119;
  v18 = 2;
  v19 = xmmword_25F313230;
  v20 = "peek()";
  v21 = 6;
  v22 = 2;
  v8 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v17, v8, WitnessTable);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_25F30678C();
    v11 = *(v10 - 8);
    (*(v11 + 32))(a1, v7, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    *&v17 = v3;
    *(&v17 + 1) = v4;
    swift_getExtendedExistentialTypeMetadata_unique();
    v13 = sub_25F305C1C();
    swift_getFunctionTypeMetadata1();
    sub_25F30539C();
    v14 = *(swift_getTupleTypeMetadata3() + 48);

    v15 = sub_25F30678C();
    (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    (*(*(v13 - 8) + 8))(&v7[v14], v13);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }
}

uint64_t TaskRef.peekValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_25F30678C();
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  TaskRef.peek()(&v13 - v7);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    v4 = v5;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v10 = *(v3 - 8);
      (*(v10 + 32))(a1, v8, v3);
      v11 = 0;
      return (*(v10 + 56))(a1, v11, 1, v3);
    }

    v6 = v9;
  }

  (*(v6 + 8))(v8, v4);
  v10 = *(v3 - 8);
  v11 = 1;
  return (*(v10 + 56))(a1, v11, 1, v3);
}

uint64_t TaskRef.peekError()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = sub_25F30678C();
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  TaskRef.peek()(&v13 - v7);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    v4 = v5;
LABEL_6:
    (*(v6 + 8))(v8, v4);
    v10 = *(v3 - 8);
    v11 = 1;
    return (*(v10 + 56))(a1, v11, 1, v3);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v10 = *(v3 - 8);
  (*(v10 + 32))(a1, v8, v3);
  v11 = 0;
  return (*(v10 + 56))(a1, v11, 1, v3);
}

void *TaskRef.map<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 88);
  v9 = *(*v3 + 96);
  type metadata accessor for TaskRef(0, a3, v8, v9);
  v10 = swift_allocObject();
  v11 = *(v7 + 80);
  v10[2] = v11;
  v10[3] = v8;
  v10[4] = a3;
  v10[5] = v9;
  v10[6] = a1;
  v10[7] = a2;
  v17[0] = v3;
  v17[1] = sub_25F2AEB08;
  v17[2] = v10;

  v16[0] = a3;
  v16[1] = v8;
  v16[2] = v11;
  v16[3] = v8;
  v16[4] = v9;
  v16[5] = v9;
  v12 = type metadata accessor for MapTaskRef(0, v16);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_25F2AE710(v17, v12, WitnessTable);

  return v14;
}

{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  type metadata accessor for TaskRef(0, a3, v8, MEMORY[0x277D84950]);
  v9 = swift_allocObject();
  v10 = v7[10];
  v9[2] = v10;
  v11 = v7[11];
  v9[3] = v11;
  v9[4] = a3;
  v12 = v7[12];
  v9[5] = v12;
  v9[6] = a1;
  v9[7] = a2;
  v18[0] = v3;
  v18[1] = sub_25F2AEB38;
  v18[2] = v9;

  v17[0] = a3;
  v17[1] = v8;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = MEMORY[0x277D84950];
  v17[5] = v12;
  v13 = type metadata accessor for MapTaskRef(0, v17);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_25F2AE710(v18, v13, WitnessTable);

  return v15;
}

uint64_t sub_25F2AD774@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a2;
  v19[1] = a5;
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30678C();
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  (*(v17 + 16))(v19 - v15, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a4 - 8) + 32))(a7, v16, a4);
  }

  else
  {
    (*(v11 + 32))(v13, v16, a3);
    (v19[0])(v13);
    (*(v11 + 8))(v13, a3);
  }

  sub_25F30678C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F2ADB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v39 = a7;
  v40 = a6;
  v37 = a2;
  v38 = a3;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v14);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v21;
  v22 = sub_25F30678C();
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  (*(v25 + 16))(&v36 - v23, a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v39;
    v27 = *(v10 + 32);
    v27(v16, v24, a5);
    (*(v10 + 16))(v13, v16, a5);
    v28 = sub_25F30650C();
    if (v28)
    {
      v29 = v28;
      v30 = *(v10 + 8);
      v30(v13, a5);
    }

    else
    {
      v29 = swift_allocError();
      v27(v35, v13, a5);
      v30 = *(v10 + 8);
    }

    v30(v16, a5);
    *v26 = v29;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v31 = (*(v18 + 32))(v20, v24, a4);
    MEMORY[0x28223BE20](v31);
    *(&v36 - 8) = a4;
    *(&v36 - 7) = a5;
    v32 = v41;
    *(&v36 - 6) = v40;
    *(&v36 - 5) = v32;
    v33 = v38;
    *(&v36 - 4) = v37;
    *(&v36 - 3) = v33;
    *(&v36 - 2) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F1BFDA0(sub_25F2AF0CC, v39);
    return (*(v18 + 8))(v20, a4);
  }
}

uint64_t TaskRef.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t TaskRef<>.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = *(*v1 + 80);
  v2[4] = sub_25F30678C();
  v3 = swift_task_alloc();
  v2[5] = v3;
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_25F2AE03C;

  return TaskRef.result.getter(v3);
}

uint64_t sub_25F2AE03C()
{

  return MEMORY[0x2822009F8](sub_25F2AE138, 0, 0);
}

uint64_t sub_25F2AE138()
{
  v1 = v0[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return sub_25F30658C();
  }

  else
  {
    (*(*(v0[3] - 8) + 32))(v0[2], v1);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_25F2AE21C(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  *v7 = v3;
  v7[1] = sub_25F1B51E0;

  return MEMORY[0x282200440](a1, v6, v8, v9, v10);
}

uint64_t sub_25F2AE2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  v9 = sub_25F30678C();
  v8[5] = v9;
  v8[6] = *(v9 - 8);
  v10 = swift_task_alloc();
  v8[7] = v10;
  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = sub_25F2AE40C;

  return TaskRef.result.getter(v10);
}

uint64_t sub_25F2AE40C()
{

  return MEMORY[0x2822009F8](sub_25F2AE508, 0, 0);
}

uint64_t sub_25F2AE508()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 24))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F2AE5C4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  *v11 = v3;
  v11[1] = sub_25F1AFDB0;

  return sub_25F2AE2F8(a1, v6, v7, v8, v9, v10, v12, v13);
}

void *sub_25F2AE694(uint64_t a1)
{
  v3 = type metadata accessor for TaskRef.State(0, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  v1[2] = sub_25F203E0C(a1, v3);
  return v1;
}

void *sub_25F2AE710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v7 = v3[10];
  v6 = v3[11];
  v8 = type metadata accessor for TaskRef.State(0, v7, v6, v3[12]);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v18 - v10);
  v20 = v7;
  v21 = v6;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_25F305C1C();
  swift_getFunctionTypeMetadata1();
  sub_25F30539C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = *(TupleTypeMetadata3 + 48);
  v14 = *(TupleTypeMetadata3 + 64);
  v11[3] = a2;
  v11[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v19, a2);
  (*(*(v6 - 8) + 56))(v11 + v13, 1, 1, v6);
  *(v11 + v14) = sub_25F3052DC();
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  v16 = sub_25F2AE694(v11);
  (*(v9 + 8))(v11, v8);
  return v16;
}

void *_s20PreviewsFoundationOS7TaskRefC9completedyACyxq_Gs6ResultOyxq_GFZ_0(uint64_t a1)
{
  v3 = type metadata accessor for TaskRef.State(0, v1[10], v1[11], v1[12]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = sub_25F30678C();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  v8 = sub_25F2AE694(v6);
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_25F2AEBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2AEC04(void *a1)
{
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_25F305C1C();
  swift_getFunctionTypeMetadata1();
  sub_25F30539C();
  result = swift_getTupleTypeMetadata3();
  if (v2 <= 0x3F)
  {
    result = sub_25F30678C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2AED0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 84);
  v6 = *(*(*(a3 + 24) - 8) + 64);
  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (v6 > v7)
  {
    v7 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!v5)
  {
    ++v6;
  }

  v8 = ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 + 1 > v8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_30;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 < 2)
    {
LABEL_30:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_30;
  }

LABEL_19:
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

  return (v10 | v15) + 255;
}

void sub_25F2AEE98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 84);
  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (v8 > v9)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (!v7)
  {
    ++v8;
  }

  v10 = ((v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 + 1 > v10)
  {
    v10 = v9 + 1;
  }

  v11 = v10 + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_43:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v10] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_28;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_25F2AF0CC(void *a1)
{
  result = (*(v1 + 48))(*(v1 + 64));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

void DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a9@<X8>)
{
  a9[1] = sub_25F304A3C();
  sub_25F23C8D4(a6, a6);
  v16 = *(a6 - 8);
  swift_allocObject();
  v17 = sub_25F30527C();
  (*(v16 + 32))(v18, a1, a6);
  sub_25F1F7314(v17, a6);
  *a9 = v19;
  a9[2] = a2;
  a9[3] = a3;
  a9[4] = a4;
  a9[5] = a5;
}

double DepthFirstDAGIterator.init<>(root:childrenKeyPath:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  v10 = a1;
  v6 = swift_allocObject();
  v7 = *(v5 + *MEMORY[0x277D84DE8]);
  *(v6 + 16) = v7;
  DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)(&v10, sub_25F1A39BC, v6, sub_25F2B085C, a2, v7, v11);
  v8 = v11[1];
  *a3 = v11[0];
  a3[1] = v8;
  result = *&v12;
  a3[2] = v12;
  return result;
}

uint64_t sub_25F2AF330(uint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v3;
}

double DepthFirstDAGIterator.init<>(root:childrenKeyPath:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = *(*a2 + *MEMORY[0x277D84DE8]);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v18 - v12;
  (*(v11 + 16))(v18 - v12, a1, v10);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = a3;
  v14[4] = a4;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  swift_getAssociatedConformanceWitness();
  DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)(v13, sub_25F2B0864, v14, sub_25F2B0894, v15, v10, v18);
  (*(v11 + 8))(a1, v10);
  v16 = v18[1];
  *a5 = v18[0];
  a5[1] = v16;
  result = *&v19;
  a5[2] = v19;
  return result;
}

double DepthFirstDAGIterator.init<>(root:childrenAccessor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)(v14, sub_25F2B08C0, v16, a2, a3, a4, v19);
  (*(v12 + 8))(a1, a4);
  v17 = v19[1];
  *a6 = v19[0];
  a6[1] = v17;
  result = *&v20;
  a6[2] = v20;
  return result;
}

uint64_t DepthFirstDAGIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v46 = *(a1 + 24);
  v3 = *(v46 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v34[1] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = v34 - v7;
  v42 = v6;
  v8 = *(v6 + 16);
  v9 = sub_25F305C1C();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F30539C();
  v47 = (v13 + 48);
  v48 = v16;
  v45 = (v13 + 32);
  v43 = (v3 + 8);
  v37 = v13;
  v40 = (v13 + 8);
  v41 = v8;
  v17 = v46;
  while (1)
  {
    v18 = v48;
    WitnessTable = swift_getWitnessTable();
    v20 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](v18, WitnessTable, v20);
    if ((*v47)(v12, 1, v8) == 1)
    {
      (*(v35 + 8))(v12, v36);
      v28 = 1;
      v29 = v38;
      return (*(v37 + 56))(v29, v28, 1, v8);
    }

    v21 = v12;
    v39 = *v45;
    v39(v15, v12, v8);
    v22 = *(v2 + 16);
    v23 = v44;
    v22(v15);
    v24 = *(v42 + 32);
    v25 = sub_25F3056BC();
    v26 = *v43;
    (*v43)(v23, v17);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v27 = v41;
    (*v40)(v15, v41);
    v8 = v27;
    v12 = v21;
  }

  v22(v15);
  v30 = v46;
  sub_25F3056FC();
  v31 = v44;
  sub_25F30568C();
  v26(v31, v30);
  v49 = (*(v2 + 32))(v15);
  MEMORY[0x28223BE20](v49);
  v32 = v41;
  v34[-4] = v41;
  v34[-3] = v30;
  v34[-2] = v24;
  v34[-1] = v2;
  swift_getWitnessTable();
  v49 = sub_25F30609C();
  swift_getWitnessTable();
  sub_25F30532C();
  v29 = v38;
  v39(v38, v15, v32);
  v28 = 0;
  v8 = v32;
  return (*(v37 + 56))(v29, v28, 1, v8);
}

BOOL sub_25F2AFB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);

  v11(a1);

  v12 = sub_25F3056BC();

  (*(v7 + 8))(v9, a4);
  return (v12 & 1) == 0;
}

uint64_t DepthFirstDAGIterator.postOrderReverseTopologicallySorted()(void *a1)
{
  v3 = a1[2];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_25F305C1C();
  v108 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v6 = &v76 - v5;
  v95 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](v95);
  v94 = &v76 - v8;
  v111 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v101 = &v76 - v10;
  v11 = a1[3];
  v110 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v113 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v91 = &v76 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v90 = &v76 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v76 - v19;
  MEMORY[0x28223BE20](v18);
  v87 = &v76 - v20;
  v21 = sub_25F305C1C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v114 = &v76 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v93 = &v76 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v98 = &v76 - v34;
  v79 = v35;
  MEMORY[0x28223BE20](v33);
  v86 = &v76 - v36;
  v37 = a1[4];
  v99 = v11;
  v39 = v38;
  v105 = v37;
  v118 = sub_25F304A3C();
  v100 = TupleTypeMetadata2;
  v117 = sub_25F3052DC();
  v116 = sub_25F3052DC();
  v85 = a1;
  v92 = v1;
  DepthFirstDAGIterator.next()(a1, v25);
  v40 = *(v39 + 48);
  v83 = v39 + 48;
  v82 = v40;
  if (v40(v25, 1, v3) == 1)
  {
    goto LABEL_29;
  }

  v77 = v22;
  v78 = v21;
  v103 = v39;
  v42 = *(v39 + 32);
  v41 = v39 + 32;
  v109 = v42;
  v112 = (v41 - 16);
  v96 = (v111 + 6);
  v43 = v110;
  v89 = (v110 + 16);
  v110 = v41;
  v111 = (v43 + 8);
  v106 = (v41 - 24);
  v80 = (v108 + 8);
  v44 = v92;
  v45 = v99;
  v46 = v100;
  v47 = v86;
  v88 = v6;
  v81 = v25;
  v42(v86, v25, v3);
LABEL_5:
  v48 = *(v44 + 16);
  v107 = *(v44 + 24);
  v108 = v48;
  v48(v47);
  if ((sub_25F3056BC() & 1) == 0)
  {
    v49 = *(v46 + 48);
    v50 = v101;
    *v101 = 0;
    (*v112)(&v50[v49], v47, v3);
    sub_25F30539C();
    sub_25F30533C();
  }

  v102 = sub_25F30539C();
  while (1)
  {
    v52 = v102;
    WitnessTable = swift_getWitnessTable();
    v54 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](v52, WitnessTable, v54);
    if ((*v96)(v6, 1, v46) == 1)
    {
      (*v111)(v87, v45);
      v47 = v86;
      (*v106)(v86, v3);
      (*v80)(v6, v84);
      v25 = v81;
      v44 = v92;
      DepthFirstDAGIterator.next()(v85, v81);
      if (v82(v25, 1, v3) == 1)
      {
LABEL_28:
        v21 = v78;
        v22 = v77;
LABEL_29:

        (*(v22 + 8))(v25, v21);
        return v116;
      }

      v109(v47, v25, v3);
      goto LABEL_5;
    }

    v55 = *(v46 + 48);
    v56 = v95;
    v57 = *(v95 + 48);
    v58 = v94;
    *v94 = *v6;
    v59 = v109;
    v109(&v58[v57], &v6[v55], v3);
    v60 = *v58;
    v61 = &v58[*(v56 + 48)];
    v62 = v98;
    v59(v98, v61, v3);
    v63 = v97;
    v108(v62);
    if (v60 == 1)
    {
      (*v112)(v93, v62, v3);
      sub_25F30539C();
      sub_25F30533C();
      (*v111)(v63, v45);
      v51 = v62;
      goto LABEL_9;
    }

    if ((sub_25F3056BC() & 1) == 0)
    {
      break;
    }

    (*v111)(v63, v45);
LABEL_26:
    v51 = v98;
LABEL_9:
    (*v106)(v51, v3);
  }

  (*v89)(v91, v63, v45);
  sub_25F3056FC();
  v64 = v90;
  sub_25F30568C();
  v104 = *v111;
  v104(v64, v45);
  v65 = *(v46 + 48);
  v66 = v101;
  *v101 = 1;
  v67 = *v112;
  v68 = v98;
  (*v112)(&v66[v65], v98, v3);
  sub_25F30533C();
  v69 = (*(v92 + 32))(v68);
  if (!sub_25F30531C())
  {
LABEL_25:

    v104(v97, v45);
    v46 = v100;
    v6 = v88;
    goto LABEL_26;
  }

  v70 = 0;
  v25 = v118;
  while (2)
  {
    v71 = sub_25F3052FC();
    sub_25F30528C();
    if (v71)
    {
      v67(v114, (v69 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v70), v3);
      v72 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_27;
      }

LABEL_19:
      v109(v28, v114, v3);
      v108(v28);
      if ((sub_25F3056BC() & 1) == 0)
      {
        v73 = v101;
        v74 = *(v100 + 48);
        *v101 = 0;
        v67(&v73[v74], v28, v3);
        v45 = v99;
        sub_25F30533C();
      }

      v104(v113, v45);
      (*v106)(v28, v3);
      ++v70;
      if (v72 == sub_25F30531C())
      {
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  result = sub_25F30601C();
  if (v79 == 8)
  {
    v115 = result;
    v67(v114, &v115, v3);
    swift_unknownObjectRelease();
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2B0918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2B0954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F2B099C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F2B0A04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t DiagnosticsCollector.__allocating_init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v16 = swift_allocObject();
  DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t DiagnosticsCollector.summaryText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock(v1 + 8);
  sub_25F2B23E4(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 8);
  return v3;
}

Swift::Void __swiftcall DiagnosticsCollector.appendLogEntry(titled:_:at:)(Swift::String titled, Swift::String _, PreviewsFoundationOS::DiagnosticsLogPosition at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = titled._object;
  v7 = titled._countAndFlagsBits;
  v8 = *at;
  v9 = *(v3 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v9 + 32));
  if (v8)
  {
    v10 = *(v9 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 24) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v10 + 2);

      *(v9 + 24) = sub_25F2F14F4(0, v15 + 1, 1, v10);

      v10 = *(v9 + 24);
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_25F2F14F4((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[32 * v13];
    *(v14 + 4) = v7;
    *(v14 + 5) = v6;
    *(v14 + 6) = countAndFlagsBits;
    *(v14 + 7) = object;
    *(v9 + 24) = v10;
  }

  else
  {

    sub_25F1EA028(0, 0, v7, v6, countAndFlagsBits, object);
  }

  os_unfair_lock_unlock((v9 + 32));
}

uint64_t static DiagnosticsCollector.numberOfDiagnosticsToKeep.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27FD57C20 = a1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.all.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C28;
  return result;
}

uint64_t static DiagnosticsCollector.Options.all.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C28 = v1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.crashLogs.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C30;
  return result;
}

uint64_t static DiagnosticsCollector.Options.crashLogs.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C30 = v1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.osLog.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C38;
  return result;
}

uint64_t static DiagnosticsCollector.Options.osLog.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C38 = v1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.simulator.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C40;
  return result;
}

uint64_t static DiagnosticsCollector.Options.simulator.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C40 = v1;
  return result;
}

uint64_t DiagnosticsCollector.archive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive;
  v4 = sub_25F3044DC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v81 = a7;
  v76 = a4;
  v73 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57C50, &qword_25F313490);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v73 - v15;
  v16 = sub_25F3046AC();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x28223BE20](v16);
  v78 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_25F3044DC();
  v18 = *(v77 - 8);
  v19 = MEMORY[0x28223BE20](v77);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = &v73 - v22;
  v23 = sub_25F30462C();
  v83 = *(v23 - 8);
  v84 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = *a1;
  LOBYTE(a1) = *a2;
  v26 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F30461C();
  *(v8 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_options) = v25;
  v85 = v8;
  *(v8 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_simulatorDiagnosticsDeviceSet) = a1;
  if (!a6)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_6;
  }

  v86 = a5;
  v87 = a6;

  MEMORY[0x25F8D7130](45, 0xE100000000000000);

  v27 = v86;
  v28 = v87;
  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v86 = 45;
  v87 = 0xE100000000000000;

  MEMORY[0x25F8D7130](v81, a8);
  swift_bridgeObjectRelease_n();
  v30 = v86;
  v29 = v87;
LABEL_6:
  v31 = objc_allocWithZone(MEMORY[0x277CCA968]);
  v32 = [v31 init];
  v33 = sub_25F304DDC();
  [v32 setDateFormat_];

  v86 = v27;
  v87 = v28;
  MEMORY[0x25F8D7130](0xD000000000000014, 0x800000025F31ADE0);
  MEMORY[0x25F8D7130](45, 0xE100000000000000);
  v34 = sub_25F3045BC();
  v81 = v32;
  v35 = [v32 stringFromDate_];

  v36 = sub_25F304E0C();
  v38 = v37;

  MEMORY[0x25F8D7130](v36, v38);

  MEMORY[0x25F8D7130](v30, v29);

  v39 = [objc_opt_self() processInfo];
  v40 = [v39 environment];

  v41 = sub_25F304A6C();
  if (*(v41 + 16) && (sub_25F219234(0xD00000000000001ELL, 0x800000025F31AE30), (v42 & 1) != 0))
  {

    v43 = v75;
    sub_25F30444C();

    v44 = 0x277CCA000;
    v45 = v77;
  }

  else
  {

    if (v76)
    {
      v44 = 0x277CCA000;
    }

    else
    {
      v46 = NSTemporaryDirectory();
      sub_25F304E0C();

      v44 = 0x277CCA000uLL;
    }

    v43 = v75;
    sub_25F30443C();

    sub_25F30447C();

    v45 = v77;
    (*(v18 + 8))(v21, v77);
  }

  v47 = v85;
  (*(v18 + 32))(v85 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive, v43, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57C58, &qword_25F313498);
  v48 = swift_allocObject();
  *(v48 + 32) = 0;
  v49 = MEMORY[0x277D84F90];
  *(v48 + 16) = MEMORY[0x277D84F90];
  *(v48 + 24) = v49;
  *(v47 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state) = v48;
  v50 = [objc_allocWithZone(*(v44 + 2408)) init];
  v51 = v78;
  sub_25F30468C();
  v52 = sub_25F30469C();
  (*(v79 + 8))(v51, v80);
  [v50 setLocale_];

  v53 = sub_25F304DDC();
  [v50 setDateFormat_];

  v54 = v82;
  sub_25F3046BC();
  v55 = sub_25F3046EC();
  v56 = *(v55 - 8);
  v57 = 0;
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    v57 = sub_25F3046CC();
    (*(v56 + 8))(v54, v55);
  }

  [v50 setTimeZone_];

  v74 = v26;
  v58 = sub_25F3045BC();
  v59 = [v50 stringFromDate_];

  v60 = sub_25F304E0C();
  v62 = v61;

  v63 = [objc_allocWithZone(*(v44 + 2408)) init];
  [v63 setTimeStyle_];
  [v63 setDateStyle_];
  v64 = sub_25F3045BC();
  v65 = [v63 stringFromDate_];

  v66 = sub_25F304E0C();
  v68 = v67;

  v69 = v85;
  v70 = *(v85 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  MEMORY[0x28223BE20](v71);
  *(&v73 - 4) = v66;
  *(&v73 - 3) = v68;
  *(&v73 - 2) = v60;
  *(&v73 - 1) = v62;

  os_unfair_lock_lock(v70 + 8);
  sub_25F2B26E4(&v70[4]);
  os_unfair_lock_unlock(v70 + 8);

  (*(v83 + 8))(v74, v84);

  return v69;
}

uint64_t sub_25F2B1B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  MEMORY[0x25F8D7130](2570, 0xE200000000000000);

  MEMORY[0x25F8D7130](a4, a5);

  v8 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2F14F4(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_25F2F14F4((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = (v8 + 32 * v11);
  v12[4] = 1702125892;
  v12[5] = 0xE400000000000000;
  v12[6] = a2;
  v12[7] = a3;
  *(a1 + 8) = v8;
  return result;
}

Swift::Void __swiftcall DiagnosticsCollector.appendFileEntry(named:folderName:contents:)(Swift::String named, Swift::String_optional folderName, Swift::String contents)
{
  v4 = *(v3 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v4 + 32));
  sub_25F2B2704((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));
}

uint64_t sub_25F2B1CEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_25F2F1600(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_25F2F1600((v14 > 1), v15 + 1, 1, v13);
  }

  v20 = &type metadata for DiagnosticsCollector.WriteFileAction;
  v21 = &off_287167858;
  v16 = swift_allocObject();
  *&v19 = v16;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v13[2] = v15 + 1;
  result = sub_25F1A42F8(&v19, &v13[5 * v15 + 4]);
  *a1 = v13;
  return result;
}

void DiagnosticsCollector.copyNonUniqueDirectories(named:descendingFrom:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v1 + 32));
  sub_25F2B2728((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_25F2B1E7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DiagnosticsCollector.CopyNonUniqueDirectoriesAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F3044DC();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  v12 = &v10[*(v8 + 20)];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_25F2F1600(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_25F2F1600((v14 > 1), v15 + 1, 1, v13);
  }

  v20 = v8;
  v21 = &off_287167868;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  sub_25F2B2B24(v10, boxed_opaque_existential_1, type metadata accessor for DiagnosticsCollector.CopyNonUniqueDirectoriesAction);
  v13[2] = v15 + 1;
  sub_25F1A42F8(&v19, &v13[5 * v15 + 4]);
  result = sub_25F2B2B8C(v10, type metadata accessor for DiagnosticsCollector.CopyNonUniqueDirectoriesAction);
  *a1 = v13;
  return result;
}

void DiagnosticsCollector.copyFiles(descendingFrom:intoFolderName:matching:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v1 + 32));
  sub_25F2B2748((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_25F2B2090(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DiagnosticsCollector.CopyFilesAction(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F3044DC();
  (*(*(v15 - 8) + 16))(v14, a2, v15);
  v16 = &v14[*(v12 + 20)];
  *v16 = a3;
  *(v16 + 1) = a4;
  v17 = &v14[*(v12 + 24)];
  *v17 = a5;
  *(v17 + 1) = a6;
  v18 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_25F2F1600(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_25F2F1600((v19 > 1), v20 + 1, 1, v18);
  }

  v25 = v12;
  v26 = &off_287167878;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  sub_25F2B2B24(v14, boxed_opaque_existential_1, type metadata accessor for DiagnosticsCollector.CopyFilesAction);
  v18[2] = v20 + 1;
  sub_25F1A42F8(&v24, &v18[5 * v20 + 4]);
  result = sub_25F2B2B8C(v14, type metadata accessor for DiagnosticsCollector.CopyFilesAction);
  *a1 = v18;
  return result;
}

void DiagnosticsCollector.writeFile(intoFolderName:using:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v1 + 32));
  sub_25F2B276C((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_25F2B22C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F2F1600(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_25F2F1600((v11 > 1), v12 + 1, 1, v10);
  }

  v16 = &type metadata for DiagnosticsCollector.DelayedFileWriteAction;
  v17 = &off_287167888;
  v13 = swift_allocObject();
  *&v15 = v13;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v10[2] = v12 + 1;
  result = sub_25F1A42F8(&v15, &v10[5 * v12 + 4]);
  *a1 = v10;
  return result;
}

uint64_t sub_25F2B23E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v19 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v4, 0);
    v5 = v3 + 56;
    do
    {
      v6 = sub_25F304C0C();
      v8 = v7;

      MEMORY[0x25F8D7130](v6, v8);

      MEMORY[0x25F8D7130](657978, 0xE300000000000000);
      v9._countAndFlagsBits = 538976288;
      v9._object = 0xE400000000000000;
      countAndFlagsBits = String.prefixingEachLine(with:startingOnLine:)(v9, 0)._countAndFlagsBits;
      MEMORY[0x25F8D7130](countAndFlagsBits);

      MEMORY[0x25F8D7130](657930, 0xE300000000000000);

      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25F1BD008((v11 > 1), v12 + 1, 1);
      }

      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = 2112829;
      *(v13 + 40) = 0xE300000000000000;
      v5 += 32;
      --v4;
    }

    while (v4);
    v2 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v14 = sub_25F304CAC();
  v16 = v15;

  *v2 = v14;
  v2[1] = v16;
  return result;
}

uint64_t DiagnosticsCollector.deinit()
{
  v1 = OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive;
  v2 = sub_25F3044DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DiagnosticsCollector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive;
  v2 = sub_25F3044DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_25F2B2790()
{
  result = qword_27FD57C60;
  if (!qword_27FD57C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C60);
  }

  return result;
}

unint64_t sub_25F2B27E8()
{
  result = qword_27FD57C68;
  if (!qword_27FD57C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C68);
  }

  return result;
}

unint64_t sub_25F2B2840()
{
  result = qword_27FD57C70;
  if (!qword_27FD57C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C70);
  }

  return result;
}

unint64_t sub_25F2B2898()
{
  result = qword_27FD57C78;
  if (!qword_27FD57C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C78);
  }

  return result;
}

unint64_t sub_25F2B28F0()
{
  result = qword_27FD57C80;
  if (!qword_27FD57C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C80);
  }

  return result;
}

unint64_t sub_25F2B2948()
{
  result = qword_27FD57C88;
  if (!qword_27FD57C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C88);
  }

  return result;
}

uint64_t sub_25F2B29D4(uint64_t a1)
{
  result = sub_25F3044DC();
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

uint64_t sub_25F2B2B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F2B2B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F2B2C24(uint64_t a1)
{
  result = sub_25F3044DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3044DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F3044DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_25F2B2E3C(uint64_t a1)
{
  result = sub_25F3044DC();
  if (v2 <= 0x3F)
  {
    result = sub_25F1D67AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static Timestamp.now()@<X0>(uint64_t *a1@<X8>)
{
  result = mach_absolute_time();
  *a1 = result;
  return result;
}

uint64_t *Timestamp.period(until:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *a2 = *v2;
  a2[1] = v3;
  return result;
}

double Timestamp.seconds(until:)(void *a1, double a2, double a3, double a4)
{
  v5 = *a1 - *v4;
  if (*a1 < *v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a4) = HIDWORD(qword_27FD55810);
  LODWORD(a3) = qword_27FD55810;
  return v5 * *&a3 / *&a4 / 1000000000.0;
}

double Timestamp.milliseconds(until:)(void *a1, double a2, double a3, double a4)
{
  v5 = *a1 - *v4;
  if (*a1 < *v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a4) = HIDWORD(qword_27FD55810);
  LODWORD(a3) = qword_27FD55810;
  return v5 * *&a3 / *&a4 / 1000000.0;
}

unint64_t sub_25F2B3090()
{
  result = qword_27FD57CC0;
  if (!qword_27FD57CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57CC0);
  }

  return result;
}

uint64_t CrashReportError.UncaughtExceptionError.exception.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CrashReportError.UncaughtExceptionError.reason.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CrashReportError.UncaughtExceptionError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.UncaughtExceptionError(0) + 32);

  return sub_25F1DF920(v3, a1);
}

uint64_t type metadata accessor for CrashReportError.UncaughtExceptionError(uint64_t a1)
{
  result = qword_27FD57CD0;
  if (!qword_27FD57CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.UncaughtExceptionError.highValueTitle.getter()
{
  sub_25F305FAC();
  v1 = *(v0 + 16);

  MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F31AED0);
  return v1;
}

uint64_t CrashReportError.UncaughtExceptionError.additionalInfo.getter()
{
  v1 = v0;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v1[2], v1[3]);
  MEMORY[0x25F8D7130](0xD000000000000027, 0x800000025F31AF00);
  MEMORY[0x25F8D7130](v1[4], v1[5]);
  MEMORY[0x25F8D7130](0x6F73616552202E60, 0xEB00000000203A6ELL);
  MEMORY[0x25F8D7130](v1[6], v1[7]);
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  return 0;
}

id sub_25F2B3338()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000045, 0x800000025F31AFD0, 0);
  qword_27FD57CC8 = result;
  return result;
}

uint64_t static CrashReportError.UncaughtExceptionError.asiRegularExpression.getter()
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FD57CC8;
  v1 = qword_27FD57CC8;
  return v0;
}

void static CrashReportError.UncaughtExceptionError.asiRegularExpression.setter(uint64_t a1)
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD57CC8;
  qword_27FD57CC8 = a1;
}

uint64_t (*static CrashReportError.UncaughtExceptionError.asiRegularExpression.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_25F2B3574@<X0>(void *a1@<X8>)
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD57CC8;
  *a1 = qword_27FD57CC8;

  return v2;
}

void sub_25F2B3600(id *a1)
{
  v1 = *a1;
  v2 = qword_27FD52988;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27FD57CC8;
  qword_27FD57CC8 = v1;
}

uint64_t CrashReportError.UncaughtExceptionError.init(report:asi:match:)@<X0>(uint64_t a1@<X0>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a1;
  v39 = a5;
  v38 = type metadata accessor for CrashReportError.UncaughtExceptionError(0);
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  v9[8] = 1;
  v10 = sub_25F304DDC();

  v11 = (a1 + *(type metadata accessor for CrashReport(0) + 20));
  v12 = v11[1];
  *(v9 + 2) = *v11;
  *(v9 + 3) = v12;

  v13 = sub_25F304DDC();
  v14 = [a4 rangeWithName_];
  v16 = v15;

  v17 = [v10 substringWithRange_];
  v18 = sub_25F304E0C();
  v20 = v19;

  v40 = v18;
  v41 = v20;
  *(v9 + 4) = sub_25F3050BC();
  *(v9 + 5) = v21;
  v22 = sub_25F304DDC();
  v23 = [a4 rangeWithName_];
  v25 = v24;

  v26 = [v10 substringWithRange_];
  v27 = sub_25F304E0C();
  v29 = v28;

  v40 = v27;
  v41 = v29;
  v30 = sub_25F3050BC();
  v32 = v31;

  *(v9 + 6) = v30;
  *(v9 + 7) = v32;
  v33 = v38;
  sub_25F2B393C(v37, &v9[*(v38 + 32)], type metadata accessor for CrashReport);
  v34 = v39;
  sub_25F2B393C(v9, v39, type metadata accessor for CrashReportError.UncaughtExceptionError);
  return (*(v7 + 56))(v34, 0, 1, v33);
}

uint64_t sub_25F2B393C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F2B39B4()
{
  sub_25F305FAC();

  v2 = *(v0 + 16);

  MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F31AED0);
  return v2;
}

void sub_25F2B3A54(uint64_t a1)
{
  sub_25F1E1DA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CrashReport(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_25F2B3AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25F304DDC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_25F3043FC();

    swift_willThrow();
  }

  return v6;
}

uint64_t FutureState.map<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5@<X1>)
{
  v6 = v5;
  v12 = type metadata accessor for FutureTermination(0, *(a2 + 16), a2, a3);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v6, a2);
  v20 = 1;
  if ((*(v13 + 48))(v18, 1, v12) != 1)
  {
    (*(v13 + 32))(v16, v18, v12);
    FutureTermination.map<A>(_:)(a1, a5, v12, a3, a4);
    (*(v13 + 8))(v16, v12);
    v20 = 0;
  }

  v23 = type metadata accessor for FutureTermination(0, a3, v21, v22);
  return (*(*(v23 - 8) + 56))(a4, v20, 1, v23);
}

uint64_t FutureState.mapSuccess<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>, uint64_t a4@<X0>, uint64_t a5@<X1>)
{
  v6[2] = *(a1 + 16);
  v6[3] = a2;
  v6[4] = a4;
  v6[5] = a5;
  return FutureState.map<A>(_:)(sub_25F2B3EB0, a1, a2, a3, v6);
}

uint64_t sub_25F2B3E24@<X0>(void (*a2)(char *)@<X1>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = sub_25F30678C();
  return sub_25F2B722C(a2, v8, x8_0);
}

uint64_t FutureState.succeededValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v8 = *(a1 + 16);
  v9 = type metadata accessor for FutureTermination(0, v8, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v5, a1);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  (*(v10 + 32))(v13, v15, v9);
  FutureTermination.succeededValue.getter(v9, a2);
  return (*(v10 + 8))(v13, v9);
}

uint64_t FutureState.failedError.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for FutureTermination(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a1);
  v15 = (*(v8 + 48))(v13, 1, v7);
  result = 0;
  if (v15 != 1)
  {
    (*(v8 + 32))(v11, v13, v7);
    v17 = FutureTermination.failedError.getter(v7);
    (*(v8 + 8))(v11, v7);
    return v17;
  }

  return result;
}

uint64_t FutureState.completedResult.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for FutureTermination(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v4, a1);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v15 = sub_25F30678C();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    FutureTermination.completedResult.getter(v7, a2);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t FutureState.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for FutureTermination(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a1);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    return 0x676E696E6E7572;
  }

  (*(v8 + 32))(v11, v13, v7);
  v16 = FutureTermination.description.getter(v7);
  (*(v8 + 8))(v11, v7);
  return v16;
}

BOOL FutureState.isRunning.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v7 = type metadata accessor for FutureTermination(0, *(a1 + 16), v5, v6);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7);
  if (v8 != 1)
  {
    (*(v2 + 8))(v4, a1);
  }

  return v8 == 1;
}

BOOL FutureState.isCanceled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for FutureTermination(0, *(a1 + 16), a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a1);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    v15 = FutureTermination.isCanceled.getter(v7);
    (*(v8 + 8))(v11, v7);
  }

  return v15;
}

uint64_t sub_25F2B4920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FutureTermination(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_25F2B497C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 57;
  if (*(v3 + 64) > 0x39uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_25:
    v11 = *(a1 + v4);
    if (v11 >= 3)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v9 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_25F2B4AA0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x39)
  {
    v5 = 57;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = ~a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t Collection.pluralize(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_25F3057BC() == 1)
  {
  }

  else
  {

    if (a4)
    {
      return a3;
    }

    else
    {
      MEMORY[0x25F8D7130](115, 0xE100000000000000);
    }
  }

  return a1;
}

uint64_t Int.pluralize(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 == 1)
  {
    v5 = a1;
  }

  else
  {
    if (!a4)
    {

      MEMORY[0x25F8D7130](115, 0xE100000000000000);
      return a1;
    }

    v5 = a3;
  }

  return v5;
}

uint64_t Collection.countDescription(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_25F3057BC();

  return sub_25F2B4DEC(a1, a2, v8);
}

uint64_t sub_25F2B4DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25F3064DC();
  MEMORY[0x25F8D7130](32, 0xE100000000000000);

  if (a3 != 1)
  {
    MEMORY[0x25F8D7130](115, 0xE100000000000000);
  }

  MEMORY[0x25F8D7130](a1, a2);

  return v7;
}

uint64_t sub_25F2B4EA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2B4EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25F2B4F48(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25F2B4F60(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t Issue.Identifier.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Issue.Identifier.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25F2B5020()
{
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F2B5074(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F2B50BC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F30659C();
  }
}

uint64_t Issue.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

double Issue.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t Issue.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Issue(0) + 20);
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Issue(uint64_t a1)
{
  result = qword_27FD57D70;
  if (!qword_27FD57D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double Issue.location.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Issue(0) + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = *(v3 + 24);

  return result;
}

uint64_t Issue.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for Issue(0) + 28));

  return v1;
}

uint64_t Issue.severity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Issue(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

__n128 Issue.init(identifier:timestamp:location:severity:description:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v11 = a1[1];
  v21 = *(a3 + 16);
  v22 = *a3;
  v12 = *(a3 + 32);
  v13 = *a4;
  if (v11)
  {
    v14 = *a1;
  }

  else
  {

    v14 = a5;
    v11 = a6;
  }

  *a7 = v14;
  *(a7 + 1) = v11;
  v15 = type metadata accessor for Issue(0);
  v16 = v15[5];
  v17 = sub_25F30462C();
  (*(*(v17 - 8) + 32))(&a7[v16], a2, v17);
  v18 = &a7[v15[6]];
  result = v22;
  *v18 = v22;
  *(v18 + 1) = v21;
  *(v18 + 4) = v12;
  v20 = &a7[v15[7]];
  *v20 = a5;
  *(v20 + 1) = a6;
  a7[v15[8]] = v13;
  return result;
}

unint64_t sub_25F2B5410()
{
  result = qword_27FD57D60;
  if (!qword_27FD57D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57D60);
  }

  return result;
}

unint64_t sub_25F2B5468()
{
  result = qword_27FD57D68;
  if (!qword_27FD57D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57D68);
  }

  return result;
}

uint64_t sub_25F2B54E4(uint64_t a1)
{
  result = sub_25F30462C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2B558C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2B55DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_25F2B5638(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void *FixedStack.init(capacity:)@<X0>(void *a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for FixedStack.Implementation(0, x1_0, a3, a4);
  v6 = sub_25F305C4C();
  v8 = v7;
  result = swift_allocObject();
  result[2] = v6;
  result[3] = v8;
  result[4] = 0;
  *a2 = result;
  return result;
}

void *sub_25F2B5784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_25F2B57CC()
{
  result = sub_25F305C3C();
  if (result)
  {
    sub_25F305BFC();
    sub_25F305C2C();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2B5830()
{
  v0 = sub_25F2B57CC();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_25F2B5860()
{
  v1 = sub_25F305C4C();
  v3 = v2;
  result = sub_25F305C3C();
  if (result)
  {
    result = sub_25F305C3C();
    if (result)
    {
      sub_25F305C0C();
      v5 = *(v0 + 32);
      result = swift_allocObject();
      result[2] = v1;
      result[3] = v3;
      result[4] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2B5944(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - v5;
  v7 = v1[3];
  v8 = v1[4];
  if (v8 >= v7)
  {
    return v8 < v7;
  }

  result = sub_25F305C3C();
  if (result)
  {
    v10 = result + *(v4 + 72) * v1[4];
    (*(v4 + 16))(v6, a1, v3);
    result = (*(v4 + 32))(v10, v6, v3);
    v11 = v1[4];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      v1[4] = v13;
      return v8 < v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2B5A84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v1[4] < 1)
  {
    v13 = *(v3 + 80);
    v10 = *(*(v13 - 8) + 56);
    v11 = a1;
    v12 = 1;
    goto LABEL_7;
  }

  v4 = *(v3 + 80);
  result = sub_25F305C3C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = v1[4];
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(v4 - 8);
  (*(v14 + 16))(a1, result + *(v14 + 72) * (v6 - 1), v4);
  result = sub_25F305BFC();
  v7 = v1[4];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v1[4] = v9;
  v10 = *(v14 + 56);
  v11 = a1;
  v12 = 0;
  v13 = v4;
LABEL_7:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_25F2B5C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (v3[4] <= a1)
  {
    goto LABEL_7;
  }

  v6 = *(*v3 + 80);
  v7 = sub_25F305C3C();
  if (!v7)
  {
    __break(1u);
LABEL_7:
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0xD000000000000023, 0x800000025F31B060);
    v12 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v12);

    MEMORY[0x25F8D7130](0xD000000000000018, 0x800000025F31B090);
    v13 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v13);

    MEMORY[0x25F8D7130](3943982, 0xE300000000000000);
    v14 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v14);

    MEMORY[0x25F8D7130](46, 0xE100000000000000);
    result = sub_25F30627C();
    __break(1u);
    return result;
  }

  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v7 + *(v8 + 72) * a1;

  return v9(a2, v10, v6);
}

uint64_t sub_25F2B5E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F2B5C08();
  *a1 = result;
  return result;
}

uint64_t (*sub_25F2B5E54(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_25F2B5ED0(v4, *a2);
  return sub_25F1CA424;
}

void (*sub_25F2B5ED0(void *a1, uint64_t a2))(void *)
{
  v5 = *(*v2 + 80);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_25F2B5C10(a2, v8);
  return sub_25F2B5FA0;
}

uint64_t sub_25F2B5FA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2B6010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2B607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for FixedStack.Implementation(0, *(a1 + 16), a3, a4);
  result = sub_25F30652C();
  if ((result & 1) == 0)
  {
    v7 = sub_25F2B5860();

    *v5 = v7;
  }

  return result;
}

Swift::Int __swiftcall FixedStack.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FixedStack.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FixedStack.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FixedStack.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2B6130@<X0>(uint64_t *a1@<X8>)
{
  result = FixedStack.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_25F2B6158(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F2B61E0(v6, *a2, a3);
  return sub_25F1CD510;
}

void (*sub_25F2B61E0(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_25F2B5C10(a2, v8);
  return sub_25F2B6F88;
}

uint64_t sub_25F2B62A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2B6310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2B637C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_25F2B6F1C(v3, a1, WitnessTable);

  return v6;
}

uint64_t sub_25F2B63C8(void *a1, void *a2, uint64_t a3)
{
  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    sub_25F305C5C();
    swift_getWitnessTable();
    sub_25F30586C();
    sub_25F30586C();
    sub_25F3066DC();
    swift_getWitnessTable();
    v3 = sub_25F30663C();
    v4 = MEMORY[0x28223BE20](v3);
    MEMORY[0x28223BE20](v4);
    sub_25F30600C();
    swift_getWitnessTable();
    v5 = sub_25F30510C();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_25F2B662C(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v15 - v6;
  MEMORY[0x25F8D88E0](v2[3]);
  MEMORY[0x25F8D88E0](v2[4]);
  result = sub_25F305C3C();
  if (!result)
  {
    goto LABEL_8;
  }

  v9 = v2[4];
  if (v9 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v15[1] = a2;
  if (v9)
  {
    v10 = result;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    do
    {
      v12(v7, v10, v4);
      sub_25F304BDC();
      result = (*(v11 - 8))(v7, v4);
      v10 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_25F2B679C(uint64_t a1)
{
  sub_25F30671C();
  sub_25F2B662C(v3, a1);
  return sub_25F30676C();
}

uint64_t sub_25F2B6834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  sub_25F30671C();
  sub_25F2B662C(v5, v3);
  return sub_25F30676C();
}

uint64_t static FixedStack<A>.== infix(_:_:)(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *a2;
  type metadata accessor for FixedStack.Implementation(0, a3, a3, a4);
  return sub_25F2B63C8(v5, v6, a4) & 1;
}

uint64_t FixedStack<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  sub_25F2B662C(v4, a2);
  return sub_25F30676C();
}

uint64_t sub_25F2B6964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  sub_25F30671C();
  FixedStack<A>.hash(into:)(v6, v4, v3);
  return sub_25F30676C();
}

uint64_t sub_25F2B6B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2B6D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_25F304CEC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_25F3059CC();
  result = sub_25F304CEC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2B6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_25F304CEC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    v12 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v12);
  }
}

uint64_t Sequence.invertAndAccumulateErrors<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return Sequence.traverseAndAccumulateErrors<A, B>(_:)(sub_25F2B99BC, v6, a1, a2, a3, a4, a5);
}

uint64_t Sequence.invert<A, B>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  return Sequence.traverse<A, B>(_:)(sub_25F2BBC60, v7, a1, a2, a4, a6);
}

uint64_t static Result<>.success.getter()
{
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F2B722C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }

  sub_25F30678C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.tryMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a1;
  v33 = a4;
  v31 = a2;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v11);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = a5;
    v25 = *(v7 + 32);
    v25(v13, v21, v6);
    (*(v7 + 16))(v10, v13, v6);
    v26 = sub_25F30650C();
    if (v26)
    {
      v27 = v26;
      v28 = *(v7 + 8);
      v28(v10, v6);
    }

    else
    {
      v27 = swift_allocError();
      v25(v29, v10, v6);
      v28 = *(v7 + 8);
    }

    v28(v13, v6);
    *v24 = v27;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
  }

  else
  {
    (*(v16 + 32))(v19, v21, v15);
    v32(v19);
    (*(v16 + 8))(v19, v15);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.analyze<A>(success:failure:)(void (*a1)(char *), uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a3;
  v23 = a1;
  v5 = *(a5 + 24);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v20, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v17, v5);
    v25(v9);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v17, v11);
    v23(v15);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t Result.failure.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 24);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

BOOL Result.isSuccess.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  Result.value.getter(a1, &v9 - v5);
  v7 = (*(*(v2 - 8) + 48))(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

BOOL Result.isFailure.getter(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  Result.failure.getter(a1, &v9 - v5);
  v7 = (*(*(v2 - 8) + 48))(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t Result.flattened<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v5);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.Discriminant.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F3063BC();

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

uint64_t Result.Discriminant.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_25F2B80B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F2B812C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F2B8198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F2B8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F2B8278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Result.Discriminant.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F2B82A8@<X0>(uint64_t *a1@<X8>)
{
  result = Result.Discriminant.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

BOOL Result.discriminant.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v4, a1);
  return v5;
}

uint64_t Sequence.traverse<A, B>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X5>, uint64_t *a6@<X8>)
{
  v54 = a1;
  v55 = a2;
  v44 = a6;
  v40 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v52 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v40 - v11;
  v42 = v12;
  v43 = v13;
  v53 = sub_25F30678C();
  MEMORY[0x28223BE20](v53);
  v15 = &v40 - v14;
  v56 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v40 - v17;
  v19 = sub_25F305C1C();
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v40 - v21;
  v23 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getAssociatedTypeWitness();
  v41 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v40 - v27;
  v58 = a4;
  v60 = sub_25F3052DC();
  (*(v23 + 16))(v25, v57, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v28;
  v57 = v26;
  v50 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v30 = v59;
  v48 = *(v59 + 48);
  v49 = v59 + 48;
  if (v48(v22, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v41 + 8))(v56, v57);
    *v44 = v60;
    sub_25F30539C();
    sub_25F30678C();
  }

  else
  {
    v31 = *(v30 + 32);
    v46 = (v40 + 32);
    v47 = v31;
    v45 = (v40 + 16);
    v32 = (v40 + 8);
    v59 = v30 + 32;
    v33 = (v30 + 8);
    while (1)
    {
      v47(v18, v22, AssociatedTypeWitness);
      v54(v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v34 = v18;
      v35 = AssociatedTypeWitness;
      v36 = v51;
      v37 = v58;
      (*v46)(v51, v15, v58);
      (*v45)(v52, v36, v37);
      sub_25F30539C();
      sub_25F30533C();
      v38 = v36;
      AssociatedTypeWitness = v35;
      v18 = v34;
      (*v32)(v38, v37);
      (*v33)(v34, AssociatedTypeWitness);
      sub_25F305CDC();
      if (v48(v22, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    (*v33)(v18, AssociatedTypeWitness);
    (*(v41 + 8))(v56, v57);

    (*(*(v42 - 8) + 32))(v44, v15, v42);
    sub_25F30539C();
    sub_25F30678C();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_25F2B89D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 56;
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    v23 = a1 + 56;
    do
    {
      v24 = v5;
      v6 = (v3 + 32 * v2);
      v7 = v2;
      while (1)
      {
        if (v7 >= v1)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        v8 = *(v6 - 3);
        v9 = *(v6 - 2);
        v10 = *(v6 - 1);
        if ((*v6 & 1) == 0)
        {
          break;
        }

        sub_25F208950(*(v6 - 3), *(v6 - 2), *(v6 - 1), 1);
        sub_25F208950(v8, v9, v10, 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25F2F0B18(0, v4[2] + 1, 1, v4);
        }

        v12 = v4[2];
        v11 = v4[3];
        if (v12 >= v11 >> 1)
        {
          v4 = sub_25F2F0B18((v11 > 1), v12 + 1, 1, v4);
        }

        sub_25F208978(v8, v9, v10, 1);
        v4[2] = v12 + 1;
        v4[v12 + 4] = v8;
        ++v7;
        v6 += 32;
        if (v2 == v1)
        {
          goto LABEL_18;
        }
      }

      sub_25F208950(*(v6 - 3), *(v6 - 2), *(v6 - 1), 0);
      sub_25F208950(v8, v9, v10, 0);
      v5 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_25F2F09D0(0, v24[2] + 1, 1, v24);
      }

      v3 = v23;
      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v5 = sub_25F2F09D0((v13 > 1), v14 + 1, 1, v5);
      }

      sub_25F208978(v8, v9, v10, 0);
      v5[2] = v14 + 1;
      v15 = &v5[3 * v14];
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v10;
    }

    while (v2 != v1);
LABEL_18:
    if (!v4[2])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_23:

      return;
    }
  }

  v16 = v4[4];
  v17 = v16;

  if (v4[2] == 1)
  {

    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    if (sub_25F30650C())
    {
    }

    else
    {
      swift_allocError();
      *v22 = v16;
    }
  }

  else
  {
    v19 = sub_25F1B9228(v4);

    v20 = sub_25F2BB9B4(v19);
    sub_25F2BBAE4();
    swift_allocError();
    *v21 = v20;
  }
}

void sub_25F2B8CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 48;
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    v22 = a1 + 48;
    do
    {
      v6 = (v3 + 24 * v2);
      v7 = v2;
      while (1)
      {
        if (v7 >= v1)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }

        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_29;
        }

        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
        if ((*v6 & 1) == 0)
        {
          break;
        }

        sub_25F1D93AC(*(v6 - 2), *(v6 - 1), 1);
        sub_25F1D93AC(v8, v9, 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25F2F0B18(0, v4[2] + 1, 1, v4);
        }

        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v4 = sub_25F2F0B18((v10 > 1), v11 + 1, 1, v4);
        }

        sub_25F1D93BC(v8, v9, 1);
        v4[2] = v11 + 1;
        v4[v11 + 4] = v8;
        ++v7;
        v6 += 24;
        if (v2 == v1)
        {
          goto LABEL_20;
        }
      }

      sub_25F1D93AC(*(v6 - 2), *(v6 - 1), 0);
      sub_25F1D93AC(v8, v9, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_25F2F1030(0, v5[2] + 1, 1, v5);
      }

      v3 = v22;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        v5 = sub_25F2F1030((v12 > 1), v13 + 1, 1, v5);
      }

      sub_25F1D93BC(v8, v9, 0);
      v5[2] = v13 + 1;
      v14 = &v5[2 * v13];
      v14[4] = v8;
      v14[5] = v9;
    }

    while (v2 != v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_20:
  if (v4[2])
  {
    v15 = v4[4];
    v16 = v15;

    if (v4[2] == 1)
    {

      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      if (sub_25F30650C())
      {
      }

      else
      {
        swift_allocError();
        *v21 = v15;
      }
    }

    else
    {
      v18 = sub_25F1B9228(v4);

      v19 = sub_25F2BB9B4(v18);
      sub_25F2BBAE4();
      swift_allocError();
      *v20 = v19;
    }
  }

  else
  {
  }
}

uint64_t Sequence.traverseAndAccumulateErrors<A, B>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a4;
  v86 = a1;
  v87 = a2;
  v65 = sub_25F305C1C();
  v64 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65);
  v68 = &v61 - v12;
  v80 = a5;
  v69 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v61 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v77 = &v61 - v20;
  v72 = *(a4 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v75 = &v61 - v23;
  v63 = a7;
  v85 = sub_25F30678C();
  MEMORY[0x28223BE20](v85);
  v25 = &v61 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v61 - v27;
  v29 = sub_25F305C1C();
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v61 - v31;
  v33 = *(a3 - 8);
  MEMORY[0x28223BE20](v30);
  v35 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_getAssociatedTypeWitness();
  v67 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v61 - v37;
  v93 = sub_25F3052DC();
  v92 = sub_25F3052DC();
  (*(v33 + 16))(v35, v89, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = v38;
  v89 = v36;
  v84 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v40 = v90;
  v82 = *(v90 + 48);
  v83 = v90 + 48;
  if (v82(v32, 1, AssociatedTypeWitness) != 1)
  {
    v81 = *(v40 + 32);
    v73 = (v72 + 2);
    v74 = (v72 + 4);
    ++v72;
    v90 = v40 + 32;
    v71 = (v69 + 32);
    v70 = (v69 + 16);
    v50 = (v69 + 8);
    v81(v28, v32, AssociatedTypeWitness);
    while (1)
    {
      v86(v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v77;
        v52 = v80;
        (*v71)(v77, v25, v80);
        (*v70)(v78, v51, v52);
        sub_25F30539C();
        sub_25F30533C();
        (*v50)(v51, v52);
      }

      else
      {
        v53 = v75;
        v54 = v79;
        (*v74)(v75, v25, v79);
        (*v73)(v76, v53, v54);
        sub_25F30539C();
        sub_25F30533C();
        (*v72)(v53, v54);
      }

      (*(v40 + 8))(v28, AssociatedTypeWitness);
      sub_25F305CDC();
      if (v82(v32, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v81(v28, v32, AssociatedTypeWitness);
    }
  }

  (*(v67 + 8))(v88, v89);
  v91 = v92;
  v41 = v80;
  sub_25F30539C();

  swift_getWitnessTable();
  v42 = v68;
  sub_25F30583C();
  v43 = v69;
  if ((*(v69 + 48))(v42, 1, v41) == 1)
  {

    (*(v64 + 8))(v42, v65);

    return v93;
  }

  else
  {

    v44 = *(v43 + 32);
    v45 = v66;
    v44(v66, v42, v41);

    if (sub_25F30531C() == 1)
    {

      v46 = v62;
      (*(v43 + 16))(v62, v45, v41);
      v47 = sub_25F30650C();
      if (v47)
      {
        v48 = v47;
        v49 = *(v43 + 8);
        v49(v46, v41);
      }

      else
      {
        v48 = swift_allocError();
        v44(v60, v46, v41);
        v49 = *(v43 + 8);
      }

      v49(v45, v41);
      return v48;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      v56 = sub_25F30618C();

      v57 = sub_25F2BB9B4(v56);
      sub_25F2BBAE4();
      v58 = swift_allocError();
      *v59 = v57;
      (*(v43 + 8))(v45, v41);
      return v58;
    }
  }
}

uint64_t sub_25F2B99C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F30678C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25F2B9A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_25F1BF03C(v2, &v12);
      v3 = v13;
      v4 = v14;
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      (*(v4 + 32))(v3, v4);
      if (v5)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v12);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_8;
      }
    }

    sub_25F1E1C08(&v12, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = (*(v7 + 32))(v6, v7);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v10)
    {
      return v8;
    }
  }

LABEL_8:

  return 0xD00000000000001BLL;
}

uint64_t sub_25F2B9B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_25F1BF03C(i, &v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, v11);
    (*(v4 + 24))(v3, v4);
    if (v5)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (!--v1)
    {
      return 0;
    }
  }

  sub_25F1E1C08(&v10, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 24))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_25F2B9C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_25F1BF03C(i, &v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, v11);
    (*(v4 + 40))(v3, v4);
    if (v5)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (!--v1)
    {
      return 0;
    }
  }

  sub_25F1E1C08(&v10, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 40))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_25F2B9D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_25F1BF03C(i, &v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, v11);
    (*(v4 + 48))(v3, v4);
    if (v5)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (!--v1)
    {
      return 0;
    }
  }

  sub_25F1E1C08(&v10, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 48))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_25F2B9E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_25F1BF03C(v2, &v9);
      v3 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      if ((*(v4 + 96))(v3, v4))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v9);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_25F1E1C08(&v9, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = (*(v7 + 96))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_25F2B9F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v21 = *(a1 + 16);
  v22 = a1 + 32;
  for (i = 1; ; ++i)
  {
    v4 = (v22 + 40 * v2);
    v5 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v5);

    MEMORY[0x25F8D7130](2618, 0xE200000000000000);
    MEMORY[0x25F8D7130](0x20726F727245, 0xE600000000000000);

    v6 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v6);
    (*(v7 + 112))(v6, v7);
    sub_25F1BF118();
    v8 = sub_25F305CEC();

    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1C3498();
    v18 = sub_25F304CAC();
    v20 = v19;

    MEMORY[0x25F8D7130](v18, v20);

    if (i < v1)
    {
      MEMORY[0x25F8D7130](0xD000000000000022, 0x800000025F31B0D0);
    }

    if (++v2 == v1)
    {
      return 0;
    }
  }

  v23 = i;
  v24 = v2;
  v25 = MEMORY[0x277D84F90];
  result = sub_25F1BD008(0, v9, 0);
  v11 = *(v8 + 16);
  v12 = (v8 + 40);
  while (v11)
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    MEMORY[0x25F8D7130](v14, v13);

    v16 = *(v25 + 16);
    v15 = *(v25 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_25F1BD008((v15 > 1), v16 + 1, 1);
    }

    *(v25 + 16) = v16 + 1;
    v17 = v25 + 16 * v16;
    *(v17 + 32) = 2105376;
    *(v17 + 40) = 0xE300000000000000;
    --v11;
    v12 += 2;
    if (!--v9)
    {

      v1 = v21;
      i = v23;
      v2 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t Result.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 16);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(a4 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2BA3A8, 0, 0);
}

uint64_t sub_25F2BA3A8()
{
  (*(v0[11] + 16))(v0[12], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(*(v0[5] + 24) - 8) + 32))(v0[2], v2, *(v0[5] + 24));
    sub_25F30678C();
    swift_storeEnumTagMultiPayload();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[3];
    (*(v0[9] + 32))(v0[10], v2, v0[8]);
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_25F2BA5B0;
    v7 = v0[10];
    v8 = v0[2];

    return v9(v8, v7);
  }
}

uint64_t sub_25F2BA5B0()
{

  return MEMORY[0x2822009F8](sub_25F2BA6AC, 0, 0);
}

uint64_t sub_25F2BA6AC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t Result.asyncMapError<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = *(a4 + 24);
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = *(a4 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2BA884, 0, 0);
}

uint64_t sub_25F2BA884()
{
  (*(v0[12] + 16))(v0[13], v0[8], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[13];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[3];
    (*(v0[10] + 32))(v0[11], v2, v0[9]);
    v9 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_25F2BAA88;
    v5 = v0[11];
    v6 = v0[2];

    return v9(v6, v5);
  }

  else
  {
    (*(*(*(v0[5] + 16) - 8) + 32))(v0[2], v2, *(v0[5] + 16));
    sub_25F30678C();
    swift_storeEnumTagMultiPayload();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25F2BAA88()
{

  return MEMORY[0x2822009F8](sub_25F2BAB84, 0, 0);
}

uint64_t sub_25F2BAB84()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t Result.asyncTryMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 24);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v9 = *(a4 + 16);
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = *(a4 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2BADB8, 0, 0);
}

uint64_t sub_25F2BADB8()
{
  (*(v0[15] + 16))(v0[16], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[16];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[10];
    v4 = v0[11];
    v6 = v0[8];
    v5 = v0[9];
    v7 = *(v5 + 32);
    v7(v4, v2, v6);
    (*(v5 + 16))(v3, v4, v6);
    v8 = sub_25F30650C();
    v10 = v0[9];
    v9 = v0[10];
    if (v8)
    {
      v11 = v8;
      v12 = *(v10 + 8);
      v12(v0[10], v0[8]);
    }

    else
    {
      v18 = v0[8];
      v11 = swift_allocError();
      v7(v19, v9, v18);
      v12 = *(v10 + 8);
    }

    v20 = v0[2];
    v12(v0[11], v0[8]);
    *v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    swift_storeEnumTagMultiPayload();

    v21 = v0[1];

    return v21();
  }

  else
  {
    v13 = v0[3];
    (*(v0[13] + 32))(v0[14], v2, v0[12]);
    v22 = (v13 + *v13);
    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    v14[1] = sub_25F2BB09C;
    v15 = v0[14];
    v16 = v0[2];

    return v22(v16, v15);
  }
}

uint64_t sub_25F2BB09C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_25F2BB294;
  }

  else
  {
    v2 = sub_25F2BB1B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F2BB1B0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F2BB294()
{
  v1 = v0[18];
  v2 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  *v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t static Result.awaiting<>(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_25F2BB4D4;

  return v9(v6);
}

uint64_t sub_25F2BB4D4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25F2BB6A4;
  }

  else
  {
    v2 = sub_25F2BB5E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F2BB5E8()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F2BB6A4()
{
  **(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Result<>.init(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_25F2BB8A0;

  return v9(v6);
}

uint64_t sub_25F2BB8A0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25F2BBC58;
  }

  else
  {
    v2 = sub_25F2BBC64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F2BB9B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25F1BD068(0, v2, 0);
    v3 = 32;
    v4 = v12;
    do
    {
      v5 = *(a1 + v3);
      swift_getErrorValue();
      v6 = v5;
      Error.humanReadable.getter(v10, v11);

      v12 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD068((v7 > 1), v8 + 1, 1);
        v4 = v12;
      }

      *(v4 + 16) = v8 + 1;
      sub_25F1E1C08(v11, v4 + 40 * v8 + 32);
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

unint64_t sub_25F2BBAE4()
{
  result = qword_27FD57E80[0];
  if (!qword_27FD57E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57E80);
  }

  return result;
}

unint64_t sub_25F2BBB80(uint64_t a1)
{
  *(a1 + 8) = sub_25F2BBBB0();
  result = sub_25F2BBC04();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2BBBB0()
{
  result = qword_27FD57F08;
  if (!qword_27FD57F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57F08);
  }

  return result;
}

unint64_t sub_25F2BBC04()
{
  result = qword_27FD57F10[0];
  if (!qword_27FD57F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57F10);
  }

  return result;
}

uint64_t EventStream.Sink.__allocating_init()()
{
  v0 = swift_allocObject();
  EventStream.Sink.init()();
  return v0;
}

uint64_t sub_25F2BBCA0()
{
  v15 = *(v0 + 16);
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v9 + 1) = 123;
  v10 = 2;
  v11 = xmmword_25F314540;
  v12 = "observerCount";
  v13 = 13;
  v14 = 2;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v4 = type metadata accessor for SubscriberCollection(255, FunctionTypeMetadata1, v2, v3);
  v5 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v9, v5, WitnessTable);
  v9 = v16;
  v7 = SubscriberCollection.count.getter(v4);

  return v7;
}

void _s20PreviewsFoundationOS11EventStreamV4SinkC4sendyyytRszlF_0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      if (!*(v2 + 16))
      {
        goto LABEL_12;
      }

      v6 = sub_25F21FC78(*(v3 + 32 + 8 * v5));
      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }

      v8 = *(*(v2 + 56) + 16 * v6);

      if (v8)
      {
        ++v5;
        v8(v9);

        if (v4 != v5)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

uint64_t EventStream.Sink.send(_:)(uint64_t a1)
{
  v3 = *v1;
  v19 = v1[2];
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v13 + 1) = 123;
  v14 = 2;
  v15 = xmmword_25F314550;
  v16 = "send(_:)";
  v17 = 8;
  v18 = 2;
  v4 = *(v3 + 80);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v8 = type metadata accessor for SubscriberCollection(255, FunctionTypeMetadata1, v6, v7);
  v9 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v13, v9, WitnessTable);
  v13 = v20;
  v12[2] = v4;
  v12[3] = a1;
  SubscriberCollection.notifyAll(closure:)(sub_25F2BC5F0, v12, v8);
}

uint64_t EventStream.Sink.eventStream.getter@<X0>(void *a1@<X8>)
{
  *a1 = sub_25F2BC620;
  a1[1] = v1;
}

uint64_t sub_25F2BBFFC(_OWORD *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return (*v1)(v4);
}

uint64_t sub_25F2BC048@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EventStream.observe(dsoHandle:file:line:column:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v12 = *v11;
  v14[0] = a2;
  v14[1] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  return v12(v14, a10, a11);
}

uint64_t static EventStream.empty.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = sub_25F2BC65C;
  a2[1] = result;
  return result;
}

uint64_t EventStream.init<A>(publisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double (**a5)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)@<X8>)
{
  v10 = *(a3 - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  result = (*(v10 + 32))(v12 + v11, a1, a3);
  *a5 = sub_25F2BC6B0;
  a5[1] = v12;
  return result;
}

double sub_25F2BC1E0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;

  v13 = sub_25F3048DC();

  *&v16 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v16 + 1) = 123;
  v17 = 2;
  v18 = xmmword_25F314560;
  v19 = "init(publisher:)";
  v20 = 16;
  v21 = 2;
  CancellationToken.init(callsite:didCancel:)(&v16, sub_25F2BD038, v13, &v22);
  v14 = v23;
  result = *&v22;
  *a6 = v22;
  *(a6 + 16) = v14;
  return result;
}

void *EventStream.Sink.init()()
{
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  SubscriberCollection.init()(FunctionTypeMetadata1, &v8);
  v7 = v8;
  v4 = type metadata accessor for SubscriberCollection(0, FunctionTypeMetadata1, v2, v3);
  v5 = sub_25F203E0C(&v7, v4);

  *(v0 + 16) = v5;
  return v0;
}

uint64_t sub_25F2BC3A4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v10 = swift_allocObject();
  v10[2] = *(v8 + 80);
  v10[3] = a2;
  v10[4] = a3;
  v13[0] = sub_25F2BD03C;
  v13[1] = v10;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();

  static SubscriberCollection.add(callsite:_:modify:)(v14, v13, sub_25F2BD064, v4, FunctionTypeMetadata1, a4);
}

uint64_t sub_25F2BC4B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v18 = a3[2];
  *&v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v12 + 1) = 123;
  v13 = 2;
  v14 = xmmword_25F314570;
  v15 = "observe(callsite:_:)";
  v16 = 20;
  v17 = 2;
  v11[2] = *(v3 + 80);
  v11[3] = a1;
  v11[4] = a2;
  v4 = MEMORY[0x277D84F78];
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  type metadata accessor for SubscriberCollection(255, FunctionTypeMetadata1, v6, v7);
  v8 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v12, sub_25F2BD06C, v11, v8, v4 + 8, WitnessTable);
}

uint64_t sub_25F2BC620@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_25F2BC3A4(v6, a2, a3, a4);
}

double sub_25F2BC65C@<D0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return CancellationToken.init(callsite:didCancel:)(v4, nullsub_2, 0, a2);
}

uint64_t EventStream.Sink.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t EventStream.eventStream.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t EventStreamProtocol.onObserve(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  (*(v11 + 32))(&v14[v13], &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *a5 = sub_25F2BCDF0;
  a5[1] = v14;
}

uint64_t EventStream.asyncStream.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F3054AC();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = *MEMORY[0x277D85778];
  v8 = *(v7 + 104);
  v10 = *v1;
  v8(v5, v6);
  v11 = v2;
  v12 = v10;
  return sub_25F30553C();
}

uint64_t sub_25F2BC9A8(uint64_t a1, void (*a2)(__int128 *__return_ptr, void *, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_25F3054DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  (*(v8 + 16))(&v16 - v9, a1, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  (*(v8 + 32))(v12 + v11, v10, v7);
  v19[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  v19[1] = 123;
  v20 = 2;
  v21 = xmmword_25F314580;
  v22 = "asyncStream";
  v23 = 11;
  v24 = 2;
  a2(&v17, v19, sub_25F2BCFA8, v12);

  v13 = v18;
  v16 = v17;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = v16;
  *(v14 + 40) = v13;
  return sub_25F30549C();
}

uint64_t sub_25F2BCB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F30548C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, a1, a3);
  sub_25F3054DC();
  sub_25F3054BC();
  return (*(v9 + 8))(v11, v8);
}

void sub_25F2BCD10(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  v8 = 123;
  v9 = 2;
  v10 = xmmword_25F314590;
  v11 = "asyncStream";
  v12 = 11;
  v13 = 2;
  v5 = *(a4 + 152);
  os_unfair_lock_lock(v5 + 19);
  sub_25F1D3EBC(&v5[4], &v6);
  os_unfair_lock_unlock(v5 + 19);
  if ((v6 & 1) == 0)
  {
    a2();
  }
}

uint64_t sub_25F2BCDF0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  v8(a2, a3);
  (*(v7 + 16))(&v11, v6, v7);
  v11(v12, a2, a3);
}

uint64_t sub_25F2BCEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2BCFA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_25F3054DC() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_25F2BCB98(a1, v5, v3);
}

void CancellationToken.cancel(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *v9;
  v11 = *(v9 + 16);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v12 = *(v11 + 152);
  os_unfair_lock_lock(v12 + 19);
  sub_25F1D3EBC(&v12[4], &v13);
  os_unfair_lock_unlock(v12 + 19);
  if ((v13 & 1) == 0)
  {
    v10();
  }
}

double CancellationToken.init(dsoHandle:file:line:column:function:_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9, uint64_t a10, uint64_t a11)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  CancellationToken.init(callsite:didCancel:)(&v14, a10, a11, &v21);
  v12 = v22;
  result = *&v21;
  *a8 = v21;
  *(a8 + 16) = v12;
  return result;
}

double CancellationToken.init(callsite:didCancel:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v9 = swift_allocObject();
  *(v9 + 76) = 0;
  *(v9 + 73) = 0;
  *(v8 + 152) = v9;
  v10 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  *(v8 + 48) = a1[2];
  *(v8 + 57) = *(a1 + 41);
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *&result = 1;
  *(v8 + 96) = xmmword_25F3077E0;
  *(v8 + 112) = 2;
  *(v8 + 120) = 0xD000000000000011;
  *(v8 + 128) = 0x800000025F319920;
  *(v8 + 136) = 0x64656C65636E6163;
  *(v8 + 144) = 0xE800000000000000;
  a4[1] = a3;
  a4[2] = v8;
  *a4 = a2;
  return result;
}

Swift::Void __swiftcall CancellationToken.store(in:)(Swift::OpaquePointer *in)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  rawValue = in->_rawValue;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    rawValue = sub_25F2F0250(0, *(rawValue + 2) + 1, 1, rawValue);
  }

  v8 = *(rawValue + 2);
  v7 = *(rawValue + 3);
  if (v8 >= v7 >> 1)
  {
    rawValue = sub_25F2F0250((v7 > 1), v8 + 1, 1, rawValue);
  }

  *(rawValue + 2) = v8 + 1;
  v9 = &rawValue[24 * v8];
  *(v9 + 4) = v4;
  *(v9 + 5) = v3;
  *(v9 + 6) = v5;
  in->_rawValue = rawValue;
}

uint64_t Collection.concatenating<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2);
  (*(v12 + 16))(v15, a1, a3);
  return sub_25F2BD528(v17, v15, a2, a3, a4, a5, a6);
}

uint64_t sub_25F2BD528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ConcatenateCollection(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t _s20PreviewsFoundationOS21ConcatenateCollectionV5IndexV1loiySbAEyxq__G_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a1;
  v48 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v39 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v45 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v41 = a3;
  v42 = a5;
  v49[0] = a3;
  v49[1] = a4;
  v43 = a4;
  v44 = a6;
  v49[2] = a5;
  v49[3] = a6;
  v20 = type metadata accessor for ConcatenateCollection.Index.Implementation(255, v49);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v24 = &v39 - v23;
  v25 = *(v22 + 56);
  v26 = *(v20 - 8);
  v27 = *(v26 + 16);
  v27(&v39 - v23, v47, v20);
  v27(&v24[v25], v48, v20);
  LODWORD(a6) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a6 == 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v46;
      v30 = *(v46 + 32);
      v31 = v39;
      v30(v39, v24, AssociatedTypeWitness);
      v32 = v40;
      v30(v40, &v24[v25], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v33 = sub_25F304CCC();
      v34 = *(v29 + 8);
      v34(v32, AssociatedTypeWitness);
      v34(v31, AssociatedTypeWitness);
    }

    else
    {
      (*(v26 + 8))(&v24[v25], v20);
      (*(v46 + 8))(v24, AssociatedTypeWitness);
      v33 = 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    (*(v26 + 8))(&v24[v25], v20);
    (*(v45 + 8))(v24, v14);
    v33 = 1;
  }

  else
  {
    v35 = v45;
    v36 = *(v45 + 32);
    v36(v19, v24, v14);
    v36(v17, &v24[v25], v14);
    swift_getAssociatedConformanceWitness();
    v33 = sub_25F304CCC();
    v37 = *(v35 + 8);
    v37(v17, v14);
    v37(v19, v14);
  }

  return v33 & 1;
}

uint64_t _s20PreviewsFoundationOS21ConcatenateCollectionV5IndexV2eeoiySbAEyxq__G_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v45 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v36 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v36 = &v36 - v13;
  v38 = a3;
  v39 = a5;
  v48[0] = a3;
  v48[1] = a4;
  v40 = a4;
  v41 = a6;
  v48[2] = a5;
  v48[3] = a6;
  v14 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, v48);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v36 - v23;
  v25 = *(v22 + 48);
  v26 = *(v15 + 16);
  v26(&v36 - v23, v46, v14);
  v26(&v24[v25], v47, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26(v18, v24, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v44;
      v27 = v45;
      v29 = v37;
      (*(v44 + 32))(v37, &v24[v25], v45);
      swift_getAssociatedConformanceWitness();
      v30 = sub_25F304DCC();
      v31 = *(v28 + 8);
      v31(v29, v27);
      v31(v18, v27);
      goto LABEL_10;
    }

    (*(v44 + 8))(v18, v45);
LABEL_7:
    v30 = 0;
    v15 = v42;
    v14 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v26(v20, v24, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v43 + 8))(v20, v12);
    goto LABEL_7;
  }

  v32 = v43;
  v33 = v36;
  (*(v43 + 32))(v36, &v24[v25], v12);
  swift_getAssociatedConformanceWitness();
  v30 = sub_25F304DCC();
  v34 = *(v32 + 8);
  v34(v33, v12);
  v34(v20, v12);
LABEL_10:
  (*(v15 + 8))(v24, v14);
  return v30 & 1;
}

uint64_t sub_25F2BDF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v12 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, &v18);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v14, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v16 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, &v18);
  return (*(*(v16 - 8) + 32))(a6, v14, v16);
}

uint64_t sub_25F2BE0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v12 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, &v18);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v14, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v16 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, &v18);
  return (*(*(v16 - 8) + 32))(a6, v14, v16);
}

uint64_t ConcatenateCollection.startIndex.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = a1[5];
  v25 = a1[3];
  v26 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v21 - v5;
  v6 = a1[4];
  v7 = a1[2];
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_25F3057AC();
  sub_25F3057FC();
  swift_getAssociatedConformanceWitness();
  v15 = sub_25F304DCC();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    v17 = v21;
    v19 = v25;
    v18 = v26;
    sub_25F3057AC();
    sub_25F2BE0A4(v17, v7, v19, v6, v18, v24);
    return (*(v22 + 8))(v17, v23);
  }

  else
  {
    sub_25F3057AC();
    sub_25F2BDF50(v14, v7, v25, v6, v26, v24);
    return (v16)(v14, v8);
  }
}

uint64_t ConcatenateCollection.index(after:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v43 = a1;
  v4 = a2[5];
  v5 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = a2[4];
  v12 = a2[2];
  v13 = swift_getAssociatedTypeWitness();
  v40 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v44 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  *&v21 = v12;
  *(&v21 + 1) = v5;
  v46 = v11;
  *&v22 = v11;
  *(&v22 + 1) = v4;
  v47[0] = v21;
  v47[1] = v22;
  v23 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, v47);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  (*(v26 + 16))(&v38 - v24, v43, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v41;
    v27 = v42;
    (*(v41 + 32))(v10, v25, v42);
    v29 = v39;
    sub_25F3057CC();
    v30 = *(v28 + 8);
    v30(v10, v27);
    sub_25F2BE0A4(v29, v12, v5, v46, v4, v45);
    return (v30)(v29, v27);
  }

  else
  {
    v39 = v10;
    v43 = v4;
    v32 = v40;
    (*(v40 + 32))(v20, v25, v13);
    sub_25F3057CC();
    sub_25F3057FC();
    swift_getAssociatedConformanceWitness();
    v33 = sub_25F304DCC();
    v34 = *(v32 + 8);
    v34(v16, v13);
    if (v33)
    {
      v35 = v39;
      v36 = v43;
      sub_25F3057AC();
      v34(v44, v13);
      v34(v20, v13);
      sub_25F2BE0A4(v35, v12, v5, v46, v36, v45);
      return (*(v41 + 8))(v35, v42);
    }

    else
    {
      v34(v20, v13);
      v37 = v44;
      sub_25F2BDF50(v44, v12, v5, v46, v43, v45);
      return (v34)(v37, v13);
    }
  }
}

uint64_t ConcatenateCollection.endIndex.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_25F3057FC();
  sub_25F2BE0A4(v9, a1[2], v5, a1[4], v4, a2);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t ConcatenateCollection.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a3;
  v4 = a2[5];
  v5 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v32 - v7;
  v9 = a2[4];
  v10 = a2[2];
  v32 = swift_getAssociatedTypeWitness();
  v11 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = &v32 - v12;
  *&v14 = v10;
  *(&v14 + 1) = v5;
  *&v15 = v9;
  *(&v15 + 1) = v4;
  v37[0] = v14;
  v37[1] = v15;
  v16 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, v37);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  (*(v19 + 16))(&v32 - v17, v35, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v33;
    v20 = v34;
    (*(v33 + 32))(v8, v18, v34);
    v22 = sub_25F3058FC();
    v24 = v23;
    v25 = swift_getAssociatedTypeWitness();
    (*(*(v25 - 8) + 16))(v36, v24, v25);
    v22(v37, 0);
    return (*(v21 + 8))(v8, v20);
  }

  else
  {
    v27 = v32;
    (*(v11 + 32))(v13, v18, v32);
    v28 = sub_25F3058FC();
    v30 = v29;
    v31 = swift_getAssociatedTypeWitness();
    (*(*(v31 - 8) + 16))(v36, v30, v31);
    v28(v37, 0);
    return (*(v11 + 8))(v13, v27);
  }
}

void (*sub_25F2BEE8C(uint64_t **a1, uint64_t a2, void *a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F2BEF14(v6, a2, a3);
  return sub_25F1CC82C;
}

void (*sub_25F2BEF14(uint64_t *a1, uint64_t a2, void *a3))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  ConcatenateCollection.subscript.getter(a2, a3, v8);
  return sub_25F1DC510;
}

uint64_t sub_25F2BF004@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  type metadata accessor for ConcatenateCollection.Index(255, v6);
  v4 = sub_25F305C1C();
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t sub_25F2BF088(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v10[0] = *(a2 + 16);
  v10[1] = v4;
  v5 = type metadata accessor for ConcatenateCollection.Index(0, v10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  (*(v6 + 32))(v10 - v7, a1, v5);
  ConcatenateCollection.index(after:)(v8, a2, a1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F2BF18C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 1);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = sub_25F3061EC();
  ConcatenateCollection.startIndex.getter(a1, a2 + *(v5 + 36));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t sub_25F2BF284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2BF2D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t ConcatenateCollection<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a1;
  v62 = a5;
  v55 = a4;
  v7 = *(a4 + 8);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v56 = &v48 - v13;
  v59 = a3;
  v14 = *(a3 + 8);
  v15 = *(a2 + 16);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v64[0] = v15;
  v64[1] = v8;
  v63 = v8;
  v64[2] = v14;
  v64[3] = v7;
  v23 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, v64);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  (*(v26 + 16))(&v48 - v24, v60, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v20;
    v50 = v17;
    v51 = v16;
    v52 = v15;
    v53 = v14;
    v27 = v58;
    v28 = v56;
    v29 = AssociatedTypeWitness;
    (*(v58 + 16))(v56, v25, AssociatedTypeWitness);
    v30 = v57;
    sub_25F3057AC();
    v60 = v7;
    swift_getAssociatedConformanceWitness();
    v31 = sub_25F304DCC();
    v32 = v30;
    v33 = *(v27 + 8);
    v33(v32, v29);
    v33(v28, v29);
    if (v31)
    {
      v34 = v49;
      v35 = v52;
      v36 = v53;
      sub_25F3057FC();
      sub_25F304C4C();
      v37 = v51;
      v38 = *(v50 + 8);
      v38(v34, v51);
      sub_25F2BDF50(v22, v35, v63, v36, v60, v62);
      v38(v22, v37);
      v39 = v25;
      v40 = AssociatedTypeWitness;
    }

    else
    {
      v43 = v57;
      v44 = v25;
      v45 = AssociatedTypeWitness;
      (*(v58 + 32))(v57, v44, AssociatedTypeWitness);
      v46 = v63;
      v47 = v54;
      sub_25F304C4C();
      v33(v43, v45);
      sub_25F2BE0A4(v47, v52, v46, v53, v60, v62);
      v39 = v47;
      v40 = v45;
    }

    return (v33)(v39, v40);
  }

  else
  {
    (*(v17 + 32))(v22, v25, v16);
    sub_25F304C4C();
    v41 = *(v17 + 8);
    v41(v22, v16);
    sub_25F2BDF50(v20, v15, v63, v14, v7, v62);
    return (v41)(v20, v16);
  }
}

uint64_t sub_25F2BF874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(v5 + 8);
  v8 = *(v6 + 8);
  v14 = *(a2 + 16);
  v15 = v7;
  v16 = v8;
  v9 = type metadata accessor for ConcatenateCollection.Index(0, &v14);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  (*(v10 + 32))(&v14 - v11, a1, v9);
  ConcatenateCollection<>.index(before:)(v12, a2, v5, v6, a1);
  return (*(v10 + 8))(v12, v9);
}

uint64_t ConcatenateCollection<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a2;
  v64 = a5;
  v65 = a1;
  v62 = a6;
  v8 = *(*(a5 + 8) + 8);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v67 = AssociatedTypeWitness;
  v68 = v11;
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v63 = a4;
  v18 = *(*(a4 + 8) + 8);
  v61 = a3;
  v19 = *(a3 + 16);
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v71[0] = v19;
  v71[1] = v9;
  v71[2] = v18;
  v71[3] = v8;
  v69 = v8;
  v29 = type metadata accessor for ConcatenateCollection.Index.Implementation(0, v71);
  MEMORY[0x28223BE20](v29);
  v31 = &v58 - v30;
  (*(v32 + 16))(&v58 - v30, v65, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v20;
    v60 = v19;
    v65 = v18;
    v33 = v67;
    v34 = v68;
    (*(v68 + 32))(v66, v31, v67);
    sub_25F3057AC();
    v35 = sub_25F30573C();
    v38 = *(v34 + 8);
    v36 = v34 + 8;
    v37 = v38;
    v38(v17, v33);
    if (v35 <= v70)
    {
      v51 = v66;
      sub_25F30572C();
      v52 = v67;
      v37(v51, v67);
      sub_25F2BE0A4(v17, v60, v9, v65, v69, v62);
      return (v37)(v17, v52);
    }

    v40 = v65;
    v39 = v66;
    v68 = v36;
    v41 = v58;
    v42 = v60;
    result = sub_25F3057FC();
    if (!__OFSUB__(v70, v35))
    {
      sub_25F30572C();
      v44 = *(v21 + 8);
      v45 = v59;
      v44(v41, v59);
      v37(v39, v67);
      sub_25F2BDF50(v26, v42, v9, v40, v69, v62);
      return (v44)(v26, v45);
    }

    __break(1u);
    goto LABEL_12;
  }

  v66 = v17;
  v46 = v9;
  (*(v21 + 32))(v28, v31, v20);
  sub_25F3057FC();
  v47 = sub_25F30573C();
  v50 = *(v21 + 8);
  v48 = v21 + 8;
  v49 = v50;
  v50(v26, v20);
  if (v47 > v70)
  {
    sub_25F30572C();
    v49(v28, v20);
    sub_25F2BDF50(v26, v19, v46, v18, v69, v62);
    return (v49)(v26, v20);
  }

  v63 = v48;
  v60 = v19;
  v65 = v18;
  v53 = v59;
  v54 = v69;
  result = sub_25F3057AC();
  if (__OFSUB__(v70, v47))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v55 = v66;
  sub_25F30572C();
  v56 = v67;
  v57 = *(v68 + 8);
  v57(v53, v67);
  v49(v28, v20);
  sub_25F2BE0A4(v55, v60, v46, v65, v54, v62);
  return (v57)(v55, v56);
}

char *ConcatenateCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a2;
  v66 = a5;
  v67 = a1;
  v7 = *(*(a5 + 8) + 8);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v65 = a4;
  v14 = *(*(a4 + 8) + 8);
  v62 = a3;
  v15 = *(a3 + 16);
  v16 = swift_getAssociatedTypeWitness();
  v69 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v61 = v15;
  v71[0] = v15;
  v71[1] = v8;
  v64 = v8;
  v58 = v14;
  v59 = v7;
  v71[2] = v14;
  v71[3] = v7;
  v21 = type metadata accessor for ConcatenateCollection.Index.Implementation(255, v71);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v25 = &v55 - v24;
  v26 = *(v23 + 56);
  v27 = *(*(v21 - 8) + 16);
  v27(&v55 - v24, v67, v21);
  v27(&v26[v25], v68, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v9;
    v31 = v69;
    v68 = v30;
    v32 = *(v30 + 32);
    v32(v13, v25, AssociatedTypeWitness);
    if (v29 == 1)
    {
      v33 = &v26[v25];
      v34 = v63;
      v35 = AssociatedTypeWitness;
      v32(v63, v33, AssociatedTypeWitness);
      v36 = sub_25F30573C();
      v37 = *(v68 + 8);
      v37(v34, v35);
      v37(v13, v35);
      return v36;
    }
  }

  else
  {
    v39 = AssociatedTypeWitness;
    v40 = *(v69 + 4);
    v57 = v16;
    v40(v20, v25, v16);
    if (v29 != 1)
    {
LABEL_11:
      v51 = v60;
      v52 = v57;
      v40(v60, &v26[v25], v57);
      v53 = sub_25F30573C();
      v54 = *(v69 + 1);
      v54(v51, v52);
      v54(v20, v52);
      return v53;
    }

    v41 = v9;
    v42 = *(v9 + 32);
    v31 = v13;
    v42(v13, &v26[v25], v39);
    v43 = v60;
    sub_25F3057FC();
    v56 = v20;
    v68 = sub_25F30573C();
    v69 = *(v69 + 1);
    v26 = v57;
    (v69)(v43, v57);
    v13 = v63;
    v20 = v64;
    sub_25F3057AC();
    v16 = sub_25F30573C();
    v25 = *(v41 + 8);
    (v25)(v13, v39);
    (v25)(v31, v39);
    (v69)(v56, v26);
    result = (v68 + v16);
    if (!__OFADD__(v68, v16))
    {
      return result;
    }

    __break(1u);
  }

  v44 = *(v31 + 4);
  v56 = v20;
  v57 = v16;
  v44(v20, &v26[v25], v16);
  v45 = v63;
  sub_25F3057AC();
  v67 = sub_25F30573C();
  v26 = *(v68 + 8);
  v46 = v45;
  v47 = AssociatedTypeWitness;
  (v26)(v46, AssociatedTypeWitness);
  v20 = v60;
  sub_25F3057FC();
  v48 = v56;
  v25 = sub_25F30573C();
  v49 = v57;
  v50 = *(v31 + 1);
  v40 = (v31 + 8);
  v50(v20, v57);
  v50(v48, v49);
  (v26)(v13, v47);
  result = (v67 + v25);
  if (__OFADD__(v67, v25))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_25F2C07F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for ConcatenateCollection.Index.Implementation(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2C0888(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2C092C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_25F2C0AC4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t Optional.flatten<A>(inner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v8, a2);
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    return (*(*(*(v9 + 16) - 8) + 56))(a3, 1, 1);
  }

  else
  {
    return (*(v10 + 32))(a3, v6, v9);
  }
}

uint64_t Optional.described.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v5, v7, v1);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_25F30653C();
  v9 = v11[0];
  (*(v2 + 8))(v5, v1);
  return v9;
}

void (*sub_25F2C1038(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL sub_25F2C10D0(_OWORD *a1, __int128 *a2)
{
  v3 = a2[1];
  v30 = *a2;
  v31 = v3;
  v32[0] = a2[2];
  *(v32 + 10) = *(a2 + 42);
  *&v34[10] = *(a1 + 42);
  v4 = a1[1];
  v33[0] = *a1;
  v33[1] = v4;
  *v34 = a1[2];
  v5 = HIBYTE(*&v34[24]);
  if (v5 >= 0xFF)
  {
    v6 = a1[1];
    v24 = *a1;
    v25 = v6;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    sub_25F1AF698(&v24, qword_27FD58230, &qword_25F314C98);
    v8 = v31;
    *a1 = v30;
    a1[1] = v8;
    a1[2] = v32[0];
    *(a1 + 42) = *(v32 + 10);
    v9 = &qword_27FD58228;
    v10 = &qword_25F314C90;
    v11 = v23;
    v12 = a2;
LABEL_7:
    sub_25F1B7174(v12, v11, v9, v10);
    return v5 > 0xFE;
  }

  v13 = a1[1];
  v27 = *a1;
  v28 = v13;
  v29[0] = a1[2];
  *(v29 + 9) = *(a1 + 41);
  if (v5 == 2)
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    v9 = &qword_27FD58228;
    v10 = &qword_25F314C90;
    v12 = &v24;
    v11 = v23;
    goto LABEL_7;
  }

  if (*(a2 + 57) != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58218, &qword_25F314C88);
    sub_25F2C43D8(&qword_27FD58220, &qword_27FD58218, &qword_25F314C88);
    swift_allocError();
    v16 = v28;
    v15 = v29[0];
    v17 = v27;
    *(v18 + 41) = *(v29 + 9);
    *(v18 + 16) = v16;
    *(v18 + 32) = v15;
    *v18 = v17;
    *(v18 + 57) = v5;
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2];
    *(v18 + 106) = *(a2 + 42);
    *(v18 + 80) = v20;
    *(v18 + 96) = v21;
    *(v18 + 64) = v19;
    swift_willThrow();
    sub_25F1B7174(a2, &v24, &qword_27FD58228, &qword_25F314C90);
    v9 = qword_27FD58230;
    v10 = &qword_25F314C98;
    v12 = v33;
    v11 = &v24;
    goto LABEL_7;
  }

  return v5 > 0xFE;
}

BOOL sub_25F2C12EC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A80, &qword_25F3114E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  sub_25F1B7174(a1, &v23 - v14, &qword_27FD56A80, &qword_25F3114E8);
  v16 = (*(v4 + 48))(v15, 1, v3);
  if (v16 == 1)
  {
    sub_25F1AF698(a1, &qword_27FD56A80, &qword_25F3114E8);
    sub_25F1B7174(v24, a1, qword_27FD53BB8, &qword_25F311350);
    (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    sub_25F2C4368(v15, v12);
    sub_25F1B7174(v12, v10, qword_27FD53BB8, &qword_25F311350);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v24;
    if (EnumCaseMultiPayload >= 2 || (sub_25F1AF698(v10, qword_27FD53BB8, &qword_25F311350), sub_25F1B7174(v18, v7, qword_27FD53BB8, &qword_25F311350), swift_getEnumCaseMultiPayload() > 1))
    {
      sub_25F1AF698(v12, qword_27FD53BB8, &qword_25F311350);
    }

    else
    {
      sub_25F1AF698(v7, qword_27FD53BB8, &qword_25F311350);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD581E0, &unk_25F314C30);
      sub_25F2C43D8(&qword_27FD581E8, &qword_27FD581E0, &unk_25F314C30);
      swift_allocError();
      v21 = v20;
      sub_25F1B7174(v12, v20, qword_27FD53BB8, &qword_25F311350);
      sub_25F1B7174(v18, v21 + *(v19 + 28), qword_27FD53BB8, &qword_25F311350);
      swift_willThrow();
      sub_25F1AF698(v12, qword_27FD53BB8, &qword_25F311350);
    }
  }

  return v16 == 1;
}

BOOL sub_25F2C1648(_OWORD *a1, __int128 *a2)
{
  v3 = a2[1];
  v30 = *a2;
  v31 = v3;
  v32[0] = a2[2];
  *(v32 + 10) = *(a2 + 42);
  *&v34[10] = *(a1 + 42);
  v4 = a1[1];
  v33[0] = *a1;
  v33[1] = v4;
  *v34 = a1[2];
  v5 = HIBYTE(*&v34[24]);
  if (v5 >= 0xFF)
  {
    v6 = a1[1];
    v24 = *a1;
    v25 = v6;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    sub_25F1AF698(&v24, &qword_27FD58210, &qword_25F314C78);
    v8 = v31;
    *a1 = v30;
    a1[1] = v8;
    a1[2] = v32[0];
    *(a1 + 42) = *(v32 + 10);
    v9 = qword_27FD54C30;
    v10 = &qword_25F314C70;
    v11 = v23;
    v12 = a2;
LABEL_7:
    sub_25F1B7174(v12, v11, v9, v10);
    return v5 > 0xFE;
  }

  v13 = a1[1];
  v27 = *a1;
  v28 = v13;
  v29[0] = a1[2];
  *(v29 + 9) = *(a1 + 41);
  if (v5 == 2)
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    v9 = qword_27FD54C30;
    v10 = &qword_25F314C70;
    v12 = &v24;
    v11 = v23;
    goto LABEL_7;
  }

  if (*(a2 + 57) != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58200, &qword_25F314C68);
    sub_25F2C43D8(&qword_27FD58208, &qword_27FD58200, &qword_25F314C68);
    swift_allocError();
    v16 = v28;
    v15 = v29[0];
    v17 = v27;
    *(v18 + 41) = *(v29 + 9);
    *(v18 + 16) = v16;
    *(v18 + 32) = v15;
    *v18 = v17;
    *(v18 + 57) = v5;
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2];
    *(v18 + 106) = *(a2 + 42);
    *(v18 + 80) = v20;
    *(v18 + 96) = v21;
    *(v18 + 64) = v19;
    swift_willThrow();
    sub_25F1B7174(a2, &v24, qword_27FD54C30, &qword_25F314C70);
    v9 = &qword_27FD58210;
    v10 = &qword_25F314C78;
    v12 = v33;
    v11 = &v24;
    goto LABEL_7;
  }

  return v5 > 0xFE;
}

BOOL sub_25F2C1864(_OWORD *a1, __int128 *a2)
{
  v3 = a2[1];
  v30 = *a2;
  v31 = v3;
  v32[0] = a2[2];
  *(v32 + 10) = *(a2 + 42);
  *&v34[10] = *(a1 + 42);
  v4 = a1[1];
  v33[0] = *a1;
  v33[1] = v4;
  *v34 = a1[2];
  v5 = HIBYTE(*&v34[24]);
  if (v5 >= 0xFF)
  {
    v6 = a1[1];
    v24 = *a1;
    v25 = v6;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    sub_25F1AF698(&v24, &qword_27FD581D0, &unk_25F314C18);
    v8 = v31;
    *a1 = v30;
    a1[1] = v8;
    a1[2] = v32[0];
    *(a1 + 42) = *(v32 + 10);
    v9 = &qword_27FD581B8;
    v10 = &qword_25F314C08;
    v11 = v23;
    v12 = a2;
LABEL_7:
    sub_25F1B7174(v12, v11, v9, v10);
    return v5 > 0xFE;
  }

  v13 = a1[1];
  v27 = *a1;
  v28 = v13;
  v29[0] = a1[2];
  *(v29 + 9) = *(a1 + 41);
  if (v5 == 2)
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    v9 = &qword_27FD581B8;
    v10 = &qword_25F314C08;
    v12 = &v24;
    v11 = v23;
    goto LABEL_7;
  }

  if (*(a2 + 57) != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD581C0, &qword_25F314C10);
    sub_25F2C43D8(&qword_27FD581C8, &qword_27FD581C0, &qword_25F314C10);
    swift_allocError();
    v16 = v28;
    v15 = v29[0];
    v17 = v27;
    *(v18 + 41) = *(v29 + 9);
    *(v18 + 16) = v16;
    *(v18 + 32) = v15;
    *v18 = v17;
    *(v18 + 57) = v5;
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2];
    *(v18 + 106) = *(a2 + 42);
    *(v18 + 80) = v20;
    *(v18 + 96) = v21;
    *(v18 + 64) = v19;
    swift_willThrow();
    sub_25F1B7174(a2, &v24, &qword_27FD581B8, &qword_25F314C08);
    v9 = &qword_27FD581D0;
    v10 = &unk_25F314C18;
    v12 = v33;
    v11 = &v24;
    goto LABEL_7;
  }

  return v5 > 0xFE;
}

uint64_t InvalidationHandle.__allocating_init(dsoHandle:file:line:column:function:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v16 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v17 = swift_allocObject();
  *(v17 + 28) = 0;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = 0;
  *(v16 + 104) = v17;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  *(v16 + 72) = a9;
  *(v16 + 80) = a10;
  *(v16 + 88) = a11;
  return v16;
}

uint64_t Invalidatable.onInvalidation(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*((*(a4 + 8))(a3, a4) + 96) + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_25F1DF0E4((v5 + 16), v10);
  os_unfair_lock_unlock((v5 + 32));
  v6 = v10[0];
  if (v10[0])
  {
    v7 = v10[1];
    v8 = v10[2];
    sub_25F2FC288(v10);
    sub_25F1DF100(v6, v7, v8);
  }

  else if (v11)
  {
    a1();
  }
}

uint64_t sub_25F2C1C8C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F1E0B5C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25F2C1D18@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F1E1128(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 144 * a1);
    v9 = v8[9];
    v10 = v7 - 1;
    a2[6] = v8[8];
    a2[7] = v9;
    *(a2 + 121) = *(v8 + 153);
    v11 = v8[5];
    a2[2] = v8[4];
    a2[3] = v11;
    v12 = v8[7];
    a2[4] = v8[6];
    a2[5] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    result = memmove(v8 + 2, v8 + 11, 144 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t Invalidatable.observeInvalidation(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  (*(a4 + 8))(a3, a4);
  SingleFireEvent.observe(_:)(a1, x8_0);
}

uint64_t Invalidatable.observeInvalidation(on:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  sub_25F2033CC(v11);
  v14 = *(a5 + 8);

  v14(a4, a5);
  SingleFireEvent.observe(_:)(sub_25F2C444C, a6);
}

uint64_t Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(a12 + 8))(a11);
  v17 = a10[3];
  v18 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 72) = a8;
  *(v19 + 80) = a9;
  v20 = *(v18 + 8);

  v20(v17, v18);
  SingleFireEvent.observe(_:)(sub_25F2C4010, v28);

  v21 = v28[0];
  if (v28[0])
  {
    v22 = v28[1];
    v23 = v28[2];
    sub_25F2FC288(v28);

    return sub_25F1DF100(v21, v22, v23);
  }

  else
  {
  }
}

__int128 *Invalidatable._bindInvalidation(dsoHandle:file:line:column:function:to:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  return sub_25F2C2128(&v13, a10, a11, a12);
}

__int128 *sub_25F2C2128(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = v4;
    v9 = result;
    v20 = *(a4 + 8);
    v10 = (a2 + 32);
    do
    {
      v11 = v20(a3, a4);
      v12 = v9[1];
      v21 = *v9;
      v22 = v12;
      v23[0] = v9[2];
      *(v23 + 9) = *(v9 + 41);
      v13 = v10[3];
      v14 = v10[4];
      v15 = __swift_project_boxed_opaque_existential_1(v10, v13);
      sub_25F2C3D3C(v15, &v21, v11, v13, v14);

      v16 = v10[3];
      v17 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v16);
      v18 = (*(v17 + 8))(v16, v17);
      v19 = v9[1];
      v21 = *v9;
      v22 = v19;
      v23[0] = v9[2];
      *(v23 + 9) = *(v9 + 41);
      sub_25F2C3D3C(v6, &v21, v18, a3, a4);

      v10 += 5;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t Invalidatable.onInvalidation(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;
  sub_25F2033CC(v9);

  Invalidatable.onInvalidation(_:)(sub_25F2C401C, v11, a4, a5);
}

uint64_t sub_25F2C2324(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = ExecutionLane.isCurrentLane.getter();
  if (v6)
  {
    return a3(v6, v7);
  }

  else
  {
    return sub_25F202E08(a3, a4);
  }
}

BOOL Invalidatable.isInvalidated.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*((*(a2 + 8))(a1) + 96) + 16);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_25F2C403C(v3, v4);
  os_unfair_lock_unlock((v2 + 32));
  sub_25F2C4080(v3, v4);

  return v3 == 0;
}

uint64_t InvalidationHandle.init(dsoHandle:file:line:column:function:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v11 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v17 = swift_allocObject();
  *(v17 + 28) = 0;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = 0;
  *(v11 + 104) = v17;
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  *(v11 + 72) = a9;
  *(v11 + 80) = a10;
  *(v11 + 88) = a11;
  return v11;
}

uint64_t InvalidationHandle.deinit()
{
  v1 = *(*(v0 + 96) + 16);

  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F2C403C(v2, v3);
  os_unfair_lock_unlock((v1 + 32));
  sub_25F2C4080(v2, v3);

  if (v2)
  {
    v5[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift";
    v5[1] = 125;
    v6 = 2;
    v7 = xmmword_25F314A80;
    v8 = "deinit";
    v9 = 6;
    v10 = 2;
    sub_25F213F98(v5);
  }

  return v0;
}

uint64_t InvalidationHandle.__deallocating_deinit()
{
  InvalidationHandle.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

id sub_25F2C2614(void (*a1)(void), uint64_t a2, _OWORD *a3)
{
  if (qword_27FD52998 != -1)
  {
    swift_once();
  }

  v5 = qword_27FD581A0;
  [qword_27FD581A0 lock];
  if (qword_27FD52990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_27FD58198;
  sub_25F212BF4(a3, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_27FD58198 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_25F2F04A0(0, *(v6 + 2) + 1, 1, v6);
    off_27FD58198 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_25F2F04A0((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[144 * v9];
  *(v10 + 2) = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[4];
  *(v10 + 5) = a3[3];
  *(v10 + 6) = v13;
  *(v10 + 3) = v11;
  *(v10 + 4) = v12;
  v14 = a3[5];
  v15 = a3[6];
  v16 = a3[7];
  *(v10 + 153) = *(a3 + 121);
  *(v10 + 8) = v15;
  *(v10 + 9) = v16;
  *(v10 + 7) = v14;
  off_27FD58198 = v6;
  swift_endAccess();
  *&v42[0] = v6;

  sub_25F2C2920(v42);
  a1();

  result = swift_beginAccess();
  if (*(off_27FD58198 + 2))
  {
    sub_25F2C3CAC(&v26);
    v42[6] = v32;
    v43[0] = v33[0];
    *(v43 + 9) = *(v33 + 9);
    v42[2] = v28;
    v42[3] = v29;
    v42[4] = v30;
    v42[5] = v31;
    v42[0] = v26;
    v42[1] = v27;
    if (sub_25F2C4260(v42) == 1)
    {
      v24 = v32;
      v25[0] = v33[0];
      *(v25 + 9) = *(v33 + 9);
      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v18 = v26;
      v19 = v27;
      sub_25F1AF698(&v18, &qword_27FD581A8, &unk_25F314BD8);
      sub_25F2C1D18(*(off_27FD58198 + 2) - 1, &v34);
    }

    else
    {
      v40 = v32;
      v41[0] = v33[0];
      *(v41 + 9) = *(v33 + 9);
      v36 = v28;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v34 = v26;
      v35 = v27;
    }

    swift_endAccess();
    v24 = v40;
    v25[0] = v41[0];
    *(v25 + 9) = *(v41 + 9);
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v18 = v34;
    v19 = v35;
    sub_25F213098(&v18);
    return [v5 unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25F2C2920(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 104);
  v30 = *a1;
  os_unfair_lock_lock((v3 + 28));
  sub_25F2C4278((v3 + 16), v35);
  os_unfair_lock_unlock((v3 + 28));
  v4 = *&v35[0];
  if (*&v35[0])
  {
    v5 = *&v35[0] & 0xFFFFFFFFFFFFFF8;
    if (*&v35[0] >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25F30631C())
    {
      v7 = 0;
      v29 = v4 & 0xC000000000000001;
      v26 = xmmword_25F309AB0;
      v25 = v4;
      v28 = v5;
      v27 = i;
      while (v29)
      {
        v9 = MEMORY[0x25F8D81E0](v7, v4);
        v8 = v9;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }

LABEL_9:
        v11 = *(v8 + 16);
        *&v35[0] = v2;
        v36[25] = 0;
        v12 = v11[13];
        MEMORY[0x28223BE20](v9);
        v23 = v35;
        swift_bridgeObjectRetain_n();

        os_unfair_lock_lock((v12 + 76));
        sub_25F2C4294((v12 + 16), &v32);
        os_unfair_lock_unlock((v12 + 76));
        v13 = v32;

        if (v13)
        {
          v33[0] = v35[0];
          v33[1] = v35[1];
          *v34 = *v36;
          *&v34[10] = *&v36[10];
          v14 = v11[10];
          v15 = mach_absolute_time();
          v16 = v11[11];
          v17 = MEMORY[0x28223BE20](v15);
          v22[0] = v33;
          v22[1] = v14;
          v23 = v17;
          os_unfair_lock_lock((v16 + 100));
          sub_25F2C42EC((v16 + 16), &v32);
          os_unfair_lock_unlock((v16 + 100));
          v19 = v32;
          if (v32)
          {
            MEMORY[0x28223BE20](v18);
            v23 = v33;
            sub_25F2C1038(sub_25F1C1A3C, v22, v19);
          }

          v20 = v11[12];
          MEMORY[0x28223BE20](v18);
          v23 = &type metadata for InvalidationTrace;
          KeyPath = swift_getKeyPath();
          v32 = 0;
          v23 = MEMORY[0x28223BE20](KeyPath);
          v24 = &v32;
          os_unfair_lock_lock(v20 + 6);
          sub_25F1C1824(&v31);
          os_unfair_lock_unlock(v20 + 6);

          swift_bridgeObjectRelease_n();

          v4 = v25;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        ++v7;
        v5 = v28;
        if (v10 == v27)
        {
          goto LABEL_19;
        }
      }

      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }
}

void sub_25F2C2D24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v5[2] = a1[2];
  *v6 = v3;
  *&v6[9] = *(a1 + 57);
  *&v4[7] = *a2;
  *&v4[23] = a2[1];
  *&v4[39] = a2[2];
  *&v4[48] = *(a2 + 41);
  v5[0] = a1[5];
  v5[1] = v2;
  v9[1] = *&v4[48];
  v9[0] = *&v4[32];
  v8 = *&v4[16];
  v7 = *v4;
  sub_25F1DF180(v5);
  sub_25F2FBF68(sub_25F2C442C);
}

void CancellationToken.manage(using:)()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v3 = v1;
  sub_25F2FC288(&v2);
}

{
  v1 = *(v0 + 2);
  v2 = *v0;
  v3 = v1;
  sub_25F2FC288(&v2);
}

id sub_25F2C2E58()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  qword_27FD581A0 = result;
  return result;
}

void sub_25F2C2E8C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1[1])
  {
    v8[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift";
    v8[1] = 125;
    v9 = 2;
    v10 = xmmword_25F314A90;
    v11 = "set(invalidationTrace:)";
    v12 = 23;
    v13 = 2;
    sub_25F213F98(v8);
    v4 = 0;
  }

  else
  {
    v4 = *a1;

    j__swift_bridgeObjectRelease(v7);
    *a1 = a2;
    *(a1 + 8) = 1;
  }

  *a3 = v4;
}

uint64_t CancellationToken.cancelOnInvalidation(of:)(void *a1)
{
  v2 = *(v1 + 2);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v3, v4);
  v6 = *v1;
  v7 = v2;
  sub_25F2FC288(&v6);
}

__int128 *bindInvalidation(of:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift";
  *(&v6 + 1) = 125;
  v7 = 2;
  v8 = xmmword_25F314AA0;
  v9 = "bindInvalidation(of:_:)";
  v10 = 23;
  v11 = 2;
  return sub_25F2C2128(&v6, a2, v3, v4);
}

uint64_t Invalidatable.bindInvalidation(of:callsite:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v5, a3);
  ConcurrentInvalidatable.trackInvalidation(of:)(v14, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return Invalidatable.trackInvalidation(of:callsite:)(a1, a2, a3, a4);
}

uint64_t ConcurrentInvalidatable.trackInvalidation(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v8[3];
  v11 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  (*(v6 + 16))(v9, v3, a2);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v6 + 32))(v13 + v12, v9, a2);
  Invalidatable.onInvalidation(_:)(sub_25F2C40C4, v13, v10, v11);
}