BOOL sub_1BF03483C(void *a1)
{
  v1 = a1;
  v2 = sub_1BF034818();

  return v2;
}

BOOL sub_1BF034894(void *a1)
{
  v1 = a1;
  v2 = sub_1BF034870();

  return v2;
}

uint64_t AsyncBlockOperation.perform(completion:)()
{
  OUTLINED_FUNCTION_76();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  (*(v1 + qword_1ED8ED040))();
  OUTLINED_FUNCTION_14_0();
  v5 = swift_allocObject();
  v6 = *((v4 & v3) + 0xF0);
  *(v5 + 16) = v6;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v5);
  v7 = MEMORY[0x1E69E7CA8];
  v8 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v8, sub_1BF0392EC, v5, v7 + 8);

  OUTLINED_FUNCTION_14_0();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v2;
  v9[4] = v0;
  v10 = qword_1ED8F0210;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
  }

  v11 = off_1ED8F0218;
  sub_1BEFF77FC(off_1ED8F0218, sub_1BF056AA4, v9);

  OUTLINED_FUNCTION_14_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v12);
  sub_1BF03952C(v11, sub_1BF0EC99C, v12);
}

uint64_t sub_1BF034A94()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF034AD0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = MEMORY[0x1E69E7CA8];
  sub_1BF032E20(0, &qword_1ED8ED8C0, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for Promise);
  v13 = swift_allocObject();
  v17 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v14 = a5;
  v15 = UnfairLock.init(options:)(&v17);
  sub_1BF032E20(0, &qword_1ED8ED8D0, v12 + 8, type metadata accessor for Seal);
  swift_allocObject();
  *(v13 + 16) = sub_1BF034CD4(v15);
  swift_retain_n();
  sub_1BF034CF0(sub_1BF0357A4, v13, sub_1BF1030C8, v13, a1, a2, a3, a4, v14, a6);

  return v13;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Cache.deinit()
{

  return v0;
}

uint64_t sub_1BF034CD8(uint64_t a1)
{
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 48) = -1;
  return OUTLINED_FUNCTION_80_0(a1);
}

uint64_t sub_1BF034CF0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v48 = a7;
  v49 = a8;
  v13 = sub_1BF1794AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v45 - v20;
  v22 = swift_allocObject();
  v47 = a1;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;

  a5(v23);
  sub_1BF1793CC();
  sub_1BF0356E4(&qword_1EBDCAEE0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v24 = sub_1BF17A05C();
  v50 = *(v14 + 8);
  v50(v17, v13);
  if (v24)
  {
    v26 = v48;
    v25 = v49;

    if (qword_1ED8EAEC8 != -1)
    {
      swift_once();
    }

    v27 = sub_1BF1797FC();
    __swift_project_value_buffer(v27, qword_1ED8F5248);
    v28 = v25;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v29 = sub_1BF1797DC();
    v30 = sub_1BF17ACDC();

    v31 = os_log_type_enabled(v29, v30);
    v46 = v21;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1BF01A7AC(v26, v28, aBlock);
      _os_log_impl(&dword_1BEFE0000, v29, v30, "cancelling task request for %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFB547B0](v33, -1, -1);
      MEMORY[0x1BFB547B0](v32, -1, -1);
    }

    v34 = [objc_opt_self() sharedScheduler];
    v35 = sub_1BF17A07C();
    [v34 cancelTaskRequestWithIdentifier_];

    v47();
    v36 = v46;
  }

  else
  {
    v45 = a10;
    v47 = [objc_opt_self() sharedScheduler];
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v14 + 16))(v17, v21, v13);
    v36 = v21;
    v38 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v39 = swift_allocObject();
    *(v39 + 2) = sub_1BF0004A8;
    *(v39 + 3) = v22;
    v40 = v49;
    *(v39 + 4) = v48;
    *(v39 + 5) = v40;
    v41 = v45;
    *(v39 + 6) = v37;
    *(v39 + 7) = v41;
    (*(v14 + 32))(&v39[v38], v17, v13);
    aBlock[4] = sub_1BF1030D0;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF1008AC;
    aBlock[3] = &block_descriptor_12;
    v42 = _Block_copy(aBlock);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v43 = v47;
    [v47 getPendingTaskRequestsWithCompletionHandler_];
    _Block_release(v42);
  }

  return (v50)(v36, v13);
}

uint64_t sub_1BF0351A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF0351DC()
{
  v1 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

void sub_1BF0352BC(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_38;
  }

  sub_1BF037534(0, &qword_1ED8EAE18, sub_1BF0378F8, &type metadata for BackgroundFetchTrigger);
  v2 = sub_1BF17B18C();
  v3 = v2;
  v64 = *(v1 + 16);
  if (!v64)
  {
    goto LABEL_38;
  }

  v4 = 0;
  v5 = v2 + 56;
  v62 = v1;
  v63 = v1 + 32;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v6 = (v63 + 40 * v4);
    v7 = *v6;
    v8 = v6[1];
    v68 = v6[2];
    v69 = v6[3];
    v70 = v6[4];
    v9 = sub_1BF17BB6C();
    v65 = v4;
    if (v8)
    {
      if (v8 == 1 || v8 == 2)
      {
        OUTLINED_FUNCTION_30_4(v9, v10, v11, v12, v13, v14, v15, v16, v62, v63, v64, v4, v66, v67, v68, v69, v70, v71[0]);
      }

      else
      {
        v17 = OUTLINED_FUNCTION_5_15();
        sub_1BF027218(v17, v18, v19, v20, v21);
        sub_1BF179F3C();
      }
    }

    sub_1BF179F3C();
    v22 = sub_1BF17BB9C();
    v67 = ~(-1 << *(v3 + 32));
    v23 = v22 & v67;
    OUTLINED_FUNCTION_32_5();
    if ((v25 & v26) == 0)
    {
      break;
    }

    while (1)
    {
      v27 = v3;
      v28 = (*(v3 + 48) + 40 * v23);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[4];
      v71[0] = *v28;
      v71[1] = v30;
      v71[2] = v31;
      v71[3] = v32;
      v71[4] = v33;
      v71[5] = v7;
      v71[6] = v8;
      v71[7] = v68;
      v71[8] = v69;
      v71[9] = v70;
      switch(v30)
      {
        case 0:
          if (!v8)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 1:
          if (v8 == 1)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        case 2:
          if (v8 == 2)
          {
            goto LABEL_36;
          }

LABEL_21:
          v34 = OUTLINED_FUNCTION_5_15();
LABEL_22:
          sub_1BF027218(v34, v35, v36, v37, v38);
          v3 = v27;
          sub_1BF0379BC(v71);
          goto LABEL_23;
      }

      if (v8 < 3)
      {
        v40 = OUTLINED_FUNCTION_5_15();
        sub_1BF027218(v40, v41, v42, v43, v44);
        v34 = OUTLINED_FUNCTION_24_7();
        goto LABEL_22;
      }

      if (v29 == v7 && v30 == v8)
      {
        break;
      }

      HIDWORD(v66) = sub_1BF17B86C();
      v46 = OUTLINED_FUNCTION_5_15();
      sub_1BF027218(v46, v47, v48, v49, v50);
      v51 = OUTLINED_FUNCTION_24_7();
      sub_1BF027218(v51, v52, v53, v54, v55);
      sub_1BF0379BC(v71);
      v3 = v27;
      if ((v66 & 0x100000000) != 0)
      {
        v56 = OUTLINED_FUNCTION_5_15();
        sub_1BF03794C(v56, v57);
        goto LABEL_37;
      }

LABEL_23:
      v23 = (v23 + 1) & v67;
      OUTLINED_FUNCTION_32_5();
      if ((v39 & v25) == 0)
      {
        v26 = *(v5 + 8 * v24);
        goto LABEL_33;
      }
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_36:
    sub_1BF0379BC(v71);
    v3 = v27;
LABEL_37:
    v4 = v65 + 1;
    v1 = v62;
    if (v65 + 1 == v64)
    {
LABEL_38:

      return;
    }
  }

LABEL_33:
  *(v5 + 8 * v24) = v26 | v25;
  v58 = (*(v3 + 48) + 40 * v23);
  *v58 = v7;
  v58[1] = v8;
  v58[2] = v68;
  v58[3] = v69;
  v58[4] = v70;
  v59 = *(v3 + 16);
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (!v60)
  {
    *(v3 + 16) = v61;
    goto LABEL_37;
  }

LABEL_40:
  __break(1u);
}

void *ObjectReuseProtector.init()()
{
  sub_1BEFF9AF8(0, &qword_1ED8ED750, 0x1E696AD18);
  sub_1BEFF9AF8(0, &qword_1ED8ECBC0, 0x1E696AEC0);
  *(v0 + 16) = sub_1BF03572C(5, 5);
  return v0;
}

uint64_t sub_1BF0356E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BF03572C(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() mapTableWithKeyOptions:a1 valueOptions:a2];

  return v2;
}

void static Lazy<A>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v41 = v3;
  v4 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v43 = v6;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v7, v5);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17AE6C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v42 = v11;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_4_1();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_28_11();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - v25;
  sub_1BF032A44(&v39 - v25);
  sub_1BF032A44(v2);
  v44 = TupleTypeMetadata2;
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = *(v15 + 16);
  v28(v1, v26, v9);
  v28(v1 + v27, v2, v9);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) != 1)
  {
    v28(v20, v1, v9);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1 + v27, 1, v4);
    v32 = v43;
    v33 = (v43 + 8);
    if (EnumTagSinglePayload != 1)
    {
      v35 = *(v43 + 32);
      v44 = v43 + 8;
      v36 = v40;
      v35(v40, v1 + v27, v4);
      sub_1BF17A05C();
      v43 = *(v32 + 8);
      (v43)(v36, v4);
      v37 = *(v15 + 8);
      v37(v2, v9);
      v37(v26, v9);
      (v43)(v20, v4);
      v38 = OUTLINED_FUNCTION_41_0();
      (v37)(v38);
      goto LABEL_8;
    }

    v34 = *(v15 + 8);
    v34(v2, v9);
    v34(v26, v9);
    (*v33)(v20, v4);
    goto LABEL_6;
  }

  v29 = *(v15 + 8);
  v29(v2, v9);
  v29(v26, v9);
  if (__swift_getEnumTagSinglePayload(v1 + v27, 1, v4) != 1)
  {
LABEL_6:
    (*(v42 + 8))(v1, v44);
    goto LABEL_8;
  }

  v30 = OUTLINED_FUNCTION_41_0();
  (v29)(v30);
LABEL_8:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF035B94()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t sub_1BF035C24()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_6(v4);

  return sub_1BF035CD4(v5, v6, v7, v3, v2);
}

uint64_t sub_1BF035CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1BF17A75C();
  v5[4] = sub_1BF17A74C();
  v7 = sub_1BF17A6AC();

  return MEMORY[0x1EEE6DFA0](sub_1BF035D6C, v7, v6);
}

uint64_t sub_1BF035D6C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);

  v1(v2);
  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_1BF035DD4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_1BF035EB4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return v3();
}

void when<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise(0, a3, a3, a4);
  v8 = a2;
  OUTLINED_FUNCTION_54();
  v6 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  WitnessTable = swift_getWitnessTable();
  static Promise.all<A>(on:_:)(a1, &v8, v6, WitnessTable);
}

void static Promise.all<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v62 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  v65 = sub_1BF17B4FC();
  MEMORY[0x1EEE9AC00](v65, v16);
  v66 = v15;
  v64 = sub_1BF17B4EC();
  OUTLINED_FUNCTION_2_3();
  v51[0] = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v51 - v20;
  v22 = *(v4 + 80);
  v23 = sub_1BF17A65C();
  type metadata accessor for DeferredPromise(0, v23, v24, v25);
  v26 = DeferredPromise.__allocating_init()();
  v67 = a4;
  if (sub_1BF17AA7C())
  {
    v68 = sub_1BF17A56C();
    DeferredPromise.resolve(_:)(&v68);

    OUTLINED_FUNCTION_2_41(v26 + 16);
    if (*(v26 + 16))
    {

LABEL_9:

      OUTLINED_FUNCTION_26_2();
      return;
    }

    __break(1u);
  }

  else
  {
    v61 = v26;
    v68 = 1;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v60 = UnfairLock.init(options:)(&v68);
    v27 = swift_allocObject();
    v54 = v22;
    v28 = sub_1BF179CEC();
    v59 = v27;
    *(v27 + 16) = v28;
    v29 = swift_allocObject();
    v57 = a2;
    v58 = v29;
    *(v29 + 16) = 0;
    MEMORY[0x1BFB52170](a3, v66);
    sub_1BF17B4CC();
    v52 = v11 + 7;
    v53 = v9 + 16;
    v55 = v21;
    v56 = v9;
    v51[1] = v9 + 32;
    while (1)
    {
      v30 = sub_1BF17B4DC();
      v32 = v69;
      if (!v69)
      {
        break;
      }

      v65 = v68;
      MEMORY[0x1EEE9AC00](v30, v31);
      v33 = v67;
      v51[-4] = a3;
      v51[-3] = v33;
      v34 = v33;
      v51[-2] = v32;
      v35 = v54;
      v66 = firstly<A>(closure:)(sub_1BF0366BC);
      v36 = a3;
      v37 = v56;
      v38 = v62;
      (*(v56 + 16))(v62, v57, v36);
      v39 = (*(v37 + 80) + 72) & ~*(v37 + 80);
      v40 = (v52 + v39) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      *(v41 + 2) = v35;
      *(v41 + 3) = v36;
      v42 = v59;
      v43 = v60;
      *(v41 + 4) = v34;
      *(v41 + 5) = v43;
      v44 = v58;
      *(v41 + 6) = v58;
      *(v41 + 7) = v42;
      *(v41 + 8) = v65;
      v45 = *(v37 + 32);
      a3 = v36;
      v45(&v41[v39], v38, v36);
      v46 = v61;
      *&v41[v40] = v61;

      v47 = v63;
      Promise.then<A>(on:closure:)(v63, sub_1BF036740, v41, MEMORY[0x1E69E7CA8] + 8);

      v48 = swift_allocObject();
      v49 = v67;
      v48[2] = v36;
      v48[3] = v49;
      v21 = v55;
      v48[4] = v43;
      v48[5] = v44;
      v48[6] = v46;

      sub_1BEFF77FC(v47, sub_1BF0F1460, v48);
    }

    (*(v51[0] + 8))(v21, v64);
    v50 = v61;
    OUTLINED_FUNCTION_2_41(v61 + 16);
    if (*(v50 + 16))
    {

      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1BF036554()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF03659C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1BF036674()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF0367E4(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(*a6 + 80) + 16);
  v15 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v23[-1] - v17;
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    (*(*(v14 - 8) + 16))(v18, a4, v14);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v14);
    v23[2] = a3;
    swift_beginAccess();
    sub_1BF179E9C();
    sub_1BF179EBC();
    swift_endAccess();
    swift_beginAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v20 = sub_1BF179DFC();

    result = sub_1BF17AA2C();
    if (v20 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      result = sub_1BF17AA2C();
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        v23[0] = 0;
        v23[1] = result;
        MEMORY[0x1EEE9AC00](result, v21);
        *(&v22 - 4) = v14;
        *(&v22 - 3) = a7;
        *(&v22 - 2) = a8;
        *(&v22 - 1) = a2;
        sub_1BF036A78();
        sub_1BF036AD0();
        v23[0] = sub_1BF17A38C();
        DeferredPromise.resolve(_:)(v23);
      }
    }
  }

  return result;
}

void sub_1BF036A78()
{
  if (!qword_1ED8EF238)
  {
    v0 = sub_1BF17AC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF238);
    }
  }
}

unint64_t sub_1BF036AD0()
{
  result = qword_1ED8EF230;
  if (!qword_1ED8EF230)
  {
    sub_1BF036A78();
    sub_1BF036B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF230);
  }

  return result;
}

unint64_t sub_1BF036B50()
{
  result = qword_1ED8EF240;
  if (!qword_1ED8EF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF240);
  }

  return result;
}

uint64_t sub_1BF036BC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1BF179EAC();
  return swift_endAccess();
}

void TFUnregisterCrashCallbacks()
{
  if (NSGetUncaughtExceptionHandler() == TFExceptionHandler)
  {
    sigaction(4, &lastSigIll, 0);
    sigaction(11, &lastSigSegv, 0);
    sigaction(8, &lastSigFpe, 0);
    sigaction(10, &lastSigBus, 0);
    TFRemoveCrashFiles();

    NSSetUncaughtExceptionHandler(0);
  }
}

void TFRemoveCrashFiles()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  [v0 removeItemAtURL:detectedCrashOnLaunchURL error:0];

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 removeItemAtURL:wipeStateOnLaunchURL error:0];
}

void sub_1BF036D70(uint64_t *result, unint64_t a2, char a3)
{
  v29 = *result;
  v30 = *(result + 1);
  v28 = *(result + 3);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BF033C94(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1BF171DD4();
        goto LABEL_32;
      }

      sub_1BF037118(v10 + 1);
    }

    v27 = *v3;
    sub_1BF17BB6C();
    if (v30 > 2)
    {
      sub_1BF179F3C();
    }

    sub_1BF179F3C();
    v3 = v32;
    v12 = sub_1BF17BB9C();
    v13 = -1 << *(v27 + 32);
    a2 = v12 & ~v13;
    if ((*(v27 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      while (1)
      {
        v15 = (*(v27 + 48) + 40 * a2);
        v7 = *v15;
        v6 = v15[1];
        v5 = v15[2];
        v4 = v15[3];
        v3 = v15[4];
        v32[0] = *v15;
        v32[1] = v6;
        v32[2] = v5;
        v32[3] = v4;
        v32[4] = v3;
        v32[5] = v29;
        v33 = v30;
        v34 = v28;
        if (!v6)
        {
          if (!result[1])
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

        if (v6 == 1)
        {
          break;
        }

        if (v6 == 2)
        {
          if (result[1] == 2)
          {
            goto LABEL_36;
          }

LABEL_20:
          sub_1BF02832C(result, v31);
LABEL_21:
          sub_1BF0379BC(v32);
          goto LABEL_22;
        }

        v16 = result[1];
        if (v16 < 3)
        {
          sub_1BF02832C(result, v31);
          sub_1BF027218(v7, v6, v5, v4, v3);
          goto LABEL_21;
        }

        if (v7 == *result && v6 == v16)
        {
          goto LABEL_35;
        }

        v18 = sub_1BF17B86C();
        sub_1BF02832C(result, v31);
        sub_1BF027218(v7, v6, v5, v4, v3);
        sub_1BF0379BC(v32);
        if (v18)
        {
          goto LABEL_37;
        }

LABEL_22:
        a2 = (a2 + 1) & v14;
        if (((*(v27 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (result[1] == 1)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }
  }

LABEL_32:
  v19 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v20 = *(v19 + 48) + 40 * a2;
  v21 = *result;
  v22 = *(result + 1);
  *(v20 + 32) = result[4];
  *v20 = v21;
  *(v20 + 16) = v22;
  v23 = *(v19 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_35:
    sub_1BF02832C(result, v31);
    sub_1BF027218(v7, v6, v5, v4, v3);
LABEL_36:
    sub_1BF0379BC(v32);
LABEL_37:
    sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v25;
  }
}

void sub_1BF0370D4()
{
  if (*(v0 + 16))
  {

    sub_1BF02EA58();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF037118(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF037594(0, &qword_1ED8EAE18, sub_1BF0378F8, &type metadata for BackgroundFetchTrigger);
  result = sub_1BF17B17C();
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
        v15 = *(v3 + 48) + 40 * (v12 | (v6 << 6));
        v26 = *(v15 + 16);
        v27 = *v15;
        v16 = *(v15 + 32);
        sub_1BF17BB6C();
        if (*(&v27 + 1) > 2uLL)
        {
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

          sub_1BF179F3C();
        }

        sub_1BF179F3C();
        result = sub_1BF17BB9C();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = *(v5 + 48) + 40 * v20;
        *v25 = v27;
        *(v25 + 16) = v26;
        *(v25 + 32) = v16;
        ++*(v5 + 16);
        if (!v9)
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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
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
          goto LABEL_27;
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

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BF037424(char a1, void *a2)
{
  v4 = a2[2];

  v4(&v13, v5);

  v6 = v13;
  swift_beginAccess();
  a2[4] = v6;

  swift_beginAccess();
  v7 = a2[5];
  a2[5] = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    os_unfair_lock_unlock(*(a2[6] + 16));
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      v12 = v6;

      v10(&v12);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  return v6;
}

void sub_1BF037534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1BF17B19C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BF037594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1BF17B19C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1BF0375F4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BF179ADC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  v12 = sub_1BF179B2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v30 = a2;
    sub_1BF179A4C();
    sub_1BF179AEC();
    v29 = *(v13 + 8);
    v29(v16, v12);
    (*(v4 + 104))(v7, *MEMORY[0x1E6977D10], v3);
    sub_1BF00AFCC(&qword_1ED8EAEB0, MEMORY[0x1E6977D20], MEMORY[0x1E6977D28]);
    v20 = sub_1BF17A05C();
    v21 = *(v4 + 8);
    v21(v7, v3);
    v21(v11, v3);
    if (v20)
    {
      type metadata accessor for SCNetworkReachability();
      v25 = sub_1BF037A18();
    }

    else
    {
      sub_1BF179A4C();
      v25 = sub_1BF037CBC();
      v29(v16, v12);
    }

    sub_1BF026ECC(0, v22, v23, v24);
    swift_allocObject();
    v27 = sub_1BF037AD8(v25);

    a2 = v30;
  }

  else
  {
    sub_1BF026ECC(0, v17, v18, v19);
    swift_allocObject();
    result = sub_1BF037AD8(0);
    v27 = result;
  }

  *a2 = v27;
  return result;
}

unint64_t sub_1BF0378F8()
{
  result = qword_1ED8EB4A8[0];
  if (!qword_1ED8EB4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EB4A8);
  }

  return result;
}

uint64_t sub_1BF03794C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1BF0379BC(uint64_t a1)
{
  sub_1BF028F38();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF037A18()
{
  v5 = *MEMORY[0x1E69E9840];
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  result = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (result)
  {
    v1 = result;
    flags = 0;
    v2 = SCNetworkReachabilityGetFlags(result, &flags);

    if (v2 && (flags & 2) != 0)
    {
      if ((flags & 4) != 0 && ((flags & 0x28) == 0 || (flags & 0x10) != 0))
      {
        return (flags >> 17) & 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1BF037AD8(uint64_t a1)
{
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3 = UnfairLock.init(options:)(&v6);
  v4 = MEMORY[0x1E69E7CC0];
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = a1;
  return v1;
}

void sub_1BF037B48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *&v5[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_backgroundTaskSchedulingQueue];
  v12 = swift_allocObject();
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(v12 + 6) = v5;
  *(v12 + 7) = v10;
  sub_1BF032E20(0, &unk_1EBDCABB8, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AsyncBlockOperation);
  v14 = v13;
  v15 = objc_allocWithZone(v13);
  v16 = &v15[qword_1ED8ED040];
  *v16 = sub_1BF034C9C;
  v16[1] = v12;
  v20.receiver = v15;
  v20.super_class = v14;
  v17 = v11;

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v18 = v5;
  v19 = objc_msgSendSuper2(&v20, sel_init);
  [v17 addOperation_];
}

uint64_t sub_1BF037C74()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF037CBC()
{
  v0 = sub_1BF17998C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF179B0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF179B1C();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x1E6977D40])
  {
    goto LABEL_2;
  }

  if (v10 == *MEMORY[0x1E6977D30])
  {
LABEL_17:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  if (v10 != *MEMORY[0x1E6977D38])
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_17;
  }

LABEL_2:
  v11 = *(v1 + 104);
  v11(v4, *MEMORY[0x1E6977B40], v0);
  v12 = sub_1BF179AFC();
  v13 = *(v1 + 8);
  v13(v4, v0);
  if (v12 & 1) != 0 || (v11(v4, *MEMORY[0x1E6977B38], v0), v14 = sub_1BF179AFC(), v13(v4, v0), (v14) || (v11(v4, *MEMORY[0x1E6977B48], v0), v15 = sub_1BF179AFC(), v13(v4, v0), (v15))
  {
    sub_1BF0381A4();
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v28;
    }

    *(v17 + 16) = v18 + 1;
    *(v17 + 8 * v18 + 32) = 1;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v11(v4, *MEMORY[0x1E6977B50], v0);
  v19 = sub_1BF179AFC();
  v13(v4, v0);
  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0381A4();
      v17 = v33;
    }

    v20 = *(v17 + 16);
    if (v20 >= *(v17 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v34;
    }

    *(v17 + 16) = v20 + 1;
    *(v17 + 8 * v20 + 32) = 2;
  }

LABEL_18:
  if (sub_1BF179ABC())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0381A4();
      v17 = v29;
    }

    v21 = *(v17 + 16);
    if (v21 >= *(v17 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v30;
    }

    *(v17 + 16) = v21 + 1;
    *(v17 + 8 * v21 + 32) = 4;
  }

  if (sub_1BF179ACC())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0381A4();
      v17 = v31;
    }

    v22 = *(v17 + 16);
    v23 = v22 + 1;
    if (v22 >= *(v17 + 24) >> 1)
    {
      sub_1BF0381A4();
      v17 = v32;
    }

    *(v17 + 16) = v23;
    *(v17 + 8 * v22 + 32) = 8;
  }

  else
  {
    v23 = *(v17 + 16);
    if (!v23)
    {
      v24 = 0;
      goto LABEL_35;
    }
  }

  v24 = 0;
  v25 = 32;
  do
  {
    v26 = *(v17 + v25);
    if ((v26 & ~v24) == 0)
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 += 8;
    --v23;
  }

  while (v23);
LABEL_35:

  return v24;
}

void sub_1BF0381A4()
{
  OUTLINED_FUNCTION_41_2();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  OUTLINED_FUNCTION_98_0();
  if (v2)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_22_3();
    *(v10 + 2) = v3;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[8 * v3] <= v12)
    {
      memmove(v12, v13, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v3);
  }
}

BOOL sub_1BF038278(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v7 = *(v3 + 32);
  *(v3 + 32) = a1;
  os_unfair_lock_unlock(*(v6 + 16));
  if ((a2 & 1) == 0 || v7 != a1)
  {
    sub_1BF16A544(a1);
  }

  return v7 != a1;
}

TeaFoundation::OperationID __swiftcall OperationID.init()()
{
  v1 = v0;
  if (qword_1ED8EF1D8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v2 = 0;
  v3 = off_1ED8EF1E0;
  v4 = *(off_1ED8EF1E0 + 2);
  v5 = off_1ED8EF1E0 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v4)
    {
      v7 = v3[2];
      if (!v7)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v21 = 0;
      MEMORY[0x1BFB547D0](&v21, 8);
      v8 = (v21 * v7) >> 64;
      if (v7 > v21 * v7)
      {
        v9 = -v7 % v7;
        if (v9 > v21 * v7)
        {
          do
          {
            v21 = 0;
            MEMORY[0x1BFB547D0](&v21, 8);
          }

          while (v9 > v21 * v7);
          v8 = (v21 * v7) >> 64;
        }
      }

      if (v8 >= v3[2])
      {
        goto LABEL_18;
      }

      v10 = &v5[16 * v8];
      v12 = *v10;
      v11 = *(v10 + 1);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF038A4C(0, *(v6 + 16) + 1, 1, v6);
        v6 = v16;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BF038A4C(v13 > 1, v14 + 1, 1, v6);
        v6 = v17;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
    }

    ++v2;
  }

  while (v2 != 16);
  v21 = v6;
  sub_1BF033004(0, &qword_1ED8EE9E0, MEMORY[0x1E69E62F8]);
  sub_1BF038A60();
  v18 = sub_1BF17A2FC();
  *v1 = v18;
  v1[1] = v19;
  result.string._object = v19;
  result.string._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1BF03859C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BF17923C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_1BF1791BC();
  v9 = type metadata accessor for DiagnosticAttachmentResolver(0);
  v10 = swift_allocObject();
  result = (*(v3 + 32))(v10 + OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory, v6, v2);
  a1[3] = v9;
  a1[4] = &off_1F3DBBD78;
  *a1 = v10;
  return result;
}

uint64_t type metadata accessor for DiagnosticAttachmentResolver(uint64_t a1)
{
  result = qword_1ED8EB170;
  if (!qword_1ED8EB170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF038734(uint64_t a1)
{
  result = sub_1BF17923C();
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

uint64_t sub_1BF0387C4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

void *sub_1BF0387D8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BF033004(0, &qword_1ED8EE9A0, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_1BF038864@<X0>(uint64_t *a1@<X8>)
{
  result = Container.TestSuite.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF03888C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_1BF17A23C();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BF038958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_140();
  if (v11)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_0();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v12 = v9;
  }

  v15 = *(v6 + 2);
  if (v12 <= v15)
  {
    v16 = *(v6 + 2);
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_1BEFEC638(0, v10, a6, MEMORY[0x1E69E6F90]);
    v17 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_15_4();
    *(v17 + 2) = v15;
    *(v17 + 3) = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = v17 + 32;
  v20 = v6 + 32;
  if (v7)
  {
    if (v17 != v6 || &v20[16 * v15] <= v19)
    {
      memmove(v19, v20, 16 * v15);
    }

    *(v6 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1BF038A60()
{
  result = qword_1ED8EE9D8;
  if (!qword_1ED8EE9D8)
  {
    sub_1BF033004(255, &qword_1ED8EE9E0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EE9D8);
  }

  return result;
}

void sub_1BF038AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1BF038B6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_58();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1BF16AF64;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_1BF038AD4(0, qword_1ED8EEA78, sub_1BF038B38, type metadata accessor for Atomic);
  OUTLINED_FUNCTION_14_0();
  swift_allocObject();
  return sub_1BF038C2C(v5, v4);
}

void *sub_1BF038C2C(uint64_t a1, uint64_t a2)
{
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v2[2] = UnfairLock.init(options:)(&v6);
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1BF038C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_14_0();
    v7 = swift_allocObject();
    v7[2] = a3;
    v7[3] = a1;
    v7[4] = a2;
    v8 = sub_1BF14FA94;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  type metadata accessor for Result(255, a3, a3, a4);
  swift_getFunctionTypeMetadata1();
  v9 = sub_1BF17AE6C();
  type metadata accessor for Atomic(0, v9, v10, v11);
  v13[0] = v8;
  v13[1] = v7;
  return Atomic.__allocating_init(wrappedValue:)(v13);
}

uint64_t sub_1BF038D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  sub_1BF0330A8(a1, a2, a3, v49);
  v6 = v49[1];
  v7 = v49[3];
  v8 = v49[4];
  v38 = v49[5];
  v39 = v49[0];
  v9 = (v49[2] + 64) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v36 = v9;
  v37 = v6;
  while (1)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = *(v39 + 48) + 24 * v13;
    v15 = *(v14 + 16);
    v16 = *(*(v39 + 56) + 8 * v13);
    v42 = *v14;
    v43 = v15;
    v44 = v16;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v38(&v45, &v42);

    if (!v48)
    {
LABEL_19:
      sub_1BF003FE8(v39);
    }

    v41 = v48;
    v17 = v45;
    v18 = v46;
    v19 = v47;
    v20 = *v50;
    v22 = sub_1BEFE81F8(v45, v46, v47);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a4 & 1) == 0)
      {
        sub_1BF039584(0, &qword_1ED8EFD40, MEMORY[0x1E69E6DC8]);
        sub_1BF17B44C();
      }
    }

    else
    {
      sub_1BF039668(v25, a4 & 1);
      v27 = sub_1BEFE81F8(v17, v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

      v22 = v27;
    }

    v40 = (v10 - 1) & v10;
    v29 = *v50;
    if (v26)
    {
      v30 = *(v29[7] + 8 * v22);

      *(v29[7] + 8 * v22) = v30;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v29[6] + 24 * v22);
      *v31 = v17;
      v31[1] = v18;
      v31[2] = v19;
      *(v29[7] + 8 * v22) = v41;
      v32 = v29[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_22;
      }

      v29[2] = v34;
    }

    a4 = 1;
    v7 = v11;
    v9 = v36;
    v6 = v37;
    v8 = v40;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF039054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1BF038D68(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1BF0390C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncOperation.State(255, a2, a3, a4);
  type metadata accessor for Atomic(0, v5, v6, v7);
  v9 = a1;
  return Atomic.__allocating_init(wrappedValue:)(&v9);
}

uint64_t sub_1BF03912C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BF033104(a2, *a1, a1[1], a1[2], a1[3]);
  a2[3] = result;
  return result;
}

uint64_t sub_1BF03917C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v2();
}

uint64_t sub_1BF0391C4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Result(0, a4, a3, a4);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v16 - v13;
  (*(*(a4 - 8) + 16))(&v16 - v13, a1, a4, v12);
  swift_storeEnumTagMultiPayload();
  a2(v14);
  return (*(v9 + 8))(v14, v7);
}

uint64_t (*sub_1BF039314(uint64_t a1))()
{
  sub_1BF0346F8(2);
  result = sub_1BF03938C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    (result)(a1);

    return sub_1BEFE52DC(v4, v5);
  }

  return result;
}

uint64_t (*sub_1BF03938C())()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;

  Atomic.wrappedValue.getter(v6);

  v2 = v6[0];
  if (!v6[0])
  {
    return OUTLINED_FUNCTION_9_3();
  }

  v3 = v6[1];
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = v2;
  v4[4] = v3;
  return sub_1BF053D7C;
}

uint64_t sub_1BF03945C()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF039490(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_35(a1, a2);
  toKey<A>(type:name:)();
  v2 = OUTLINED_FUNCTION_0_73();
  sub_1BF02EC84(v2, v3, v4);
}

uint64_t sub_1BF03952C(void *a1, uint64_t (*a2)(), uint64_t a3)
{
  v4 = sub_1BF0401B8(a1, a2, a3);
  v4();

  return v3;
}

void sub_1BF039584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BasePoolObject();
    v7 = sub_1BEFEA078();
    v8 = a3(a1, &type metadata for Key, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BF0395F8()
{
}

uint64_t sub_1BF039668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BF039584(0, &unk_1ED8EF490, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  result = sub_1BF17B51C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v7;
    return result;
  }

  v34 = v5;
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
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_1BF1470D8(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = (*(v5 + 48) + 24 * v18);
    v21 = *v20;
    v36 = v20[1];
    v22 = v20[2];
    v23 = *(v19 + 8 * v18);
    if ((v35 & 1) == 0)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    sub_1BF17BB6C();
    MEMORY[0x1BFB53950](v21);
    if (v22)
    {
      sub_1BF179F3C();
    }

    result = sub_1BF17BB9C();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 24 * v27);
    *v32 = v21;
    v32[1] = v36;
    v32[2] = v22;
    *(*(v7 + 56) + 8 * v27) = v23;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1BF03995C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, a1, a2, v8);
  v13 = sub_1BEFE4460(v10, a2, v11, v12);
  (*(v5 + 8))(a1, a2);
  return v13;
}

uint64_t objectdestroy_23Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1BF039AF8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    return (*(a1 + 24))(a2);
  }

  return result;
}

void AsyncObservable<A>.next(value:quietIfUnchanged:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = *(v0 + 16);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  v14 = *(v13 + 104);
  OUTLINED_FUNCTION_3_33(v0 + v14);
  (*(v7 + 16))(v11, v0 + v14, v6);
  v15 = sub_1BF17A05C();
  (*(v7 + 8))(v11, v6);
  OUTLINED_FUNCTION_4_25(v0 + v14);
  (*(v7 + 24))(v0 + v14, v4, v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v12 + 16));
  if ((v2 & 1) == 0 || (v15 & 1) == 0)
  {
    sub_1BF03A5D8(v4);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF039CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = *v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    v19 = *(v10 + 40);
    (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = v10;
    (*(v7 + 32))(v13 + v12, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    v14 = sub_1BF006210(v19, sub_1BF03AF94, v13);
    v16 = v15;

    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = v16;
    v17 = sub_1BF006198;
  }

  else
  {
    v17 = 0;
  }

  *a4 = v17;
  a4[1] = result;
  return result;
}

uint64_t sub_1BF039E70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF039ECC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v10 = sub_1BF17AE6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - v13;
  sub_1BF179EAC();
  v15 = 1;
  LODWORD(a4) = __swift_getEnumTagSinglePayload(v14, 1, a4);
  (*(v11 + 8))(v14, v10);
  if (a4 == 1)
  {
    (*(*(a3 - 8) + 16))(a6, a1, a3);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v15, 1, a3);
}

void SingleValueStore.init(directoryURL:filename:log:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v58 = v2;
  v59 = v3;
  sub_1BF00AE78(0);
  v5 = OUTLINED_FUNCTION_68(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_0();
  v57 = v8 - v7;
  OUTLINED_FUNCTION_12_9();
  v60 = sub_1BF1797FC();
  OUTLINED_FUNCTION_1();
  v62 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v61 = v13 - v12;
  OUTLINED_FUNCTION_12_9();
  v56 = sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  sub_1BF17AD1C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_2_0();
  v23 = sub_1BF179BBC();
  v24 = OUTLINED_FUNCTION_68(v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_2_0();
  v55 = qword_1ED8EE1E8;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  sub_1BF179B7C();
  v63 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_13();
  sub_1BF00AEAC(v26, v27, MEMORY[0x1E69E8040]);
  sub_1BF00B014(0);
  OUTLINED_FUNCTION_8_10();
  sub_1BF00AEAC(v28, v29, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  (*(v15 + 104))(v20, *MEMORY[0x1E69E8090], v56);
  *(v0 + v55) = sub_1BF17AD9C();
  v30 = qword_1ED8EE200;
  v63 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v30) = UnfairLock.init(options:)(&v63);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_4_0();
  *(v0 + *(v35 + 160)) = 0;
  OUTLINED_FUNCTION_4_0();
  v37 = *(v36 + 168);
  *(v1 + v37) = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_4_0();
  sub_1BF028120(0);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = v1 + qword_1ED8EE1F0;
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = qword_1ED8EE210;
  v44 = sub_1BF17923C();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v1 + v43, v58, v44);
  __swift_storeEnumTagSinglePayload(v1 + v43, 0, 1, v44);
  v46 = (v1 + qword_1ED8EE208);
  *v46 = 0;
  v46[1] = 0;
  OUTLINED_FUNCTION_5_10((v1 + qword_1ED8EE1F8));
  sub_1BF0279C0(v59, v57, v47);
  if (__swift_getEnumTagSinglePayload(v57, 1, v60) == 1)
  {
    v48 = v61;
    v49 = v62;
    if (qword_1ED8EDDA8 != -1)
    {
      OUTLINED_FUNCTION_10_14(&qword_1ED8EDDA8);
    }

    v50 = __swift_project_value_buffer(v60, qword_1ED8F5280);
    (*(v62 + 16))(v61, v50, v60);
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v59, v51);
    (*(v45 + 8))(v58, v44);
    if (__swift_getEnumTagSinglePayload(v57, 1, v60) != 1)
    {
      OUTLINED_FUNCTION_0_24();
      sub_1BF00B048(v57, v52);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v59, v53);
    (*(v45 + 8))(v58, v44);
    v49 = v62;
    v48 = v61;
    (*(v62 + 32))(v61, v57, v60);
  }

  OUTLINED_FUNCTION_4_0();
  (*(v49 + 32))(v1 + *(v54 + 176), v48, v60);
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF03A5D8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  UnfairLock.lock()();
  swift_beginAccess();
  _s13TeaFoundation8ObserverCMa_0(255, *(v2 + 80), v4, v5);
  sub_1BF17A65C();
  sub_1BEFF0B78();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v6 = sub_1BF17A38C();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v1[3] = sub_1BF17B31C();

  os_unfair_lock_unlock(*(v3 + 16));
  v7 = 0;
  v8 = *(v6 + 16);
  for (i = v6 + 40; ; i += 16)
  {
    if (v8 == v7)
    {

      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    ++v7;
    v10 = *(i - 8);

    v10(v11);
  }

  __break(1u);
}

uint64_t sub_1BF03A7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v70[1] = *MEMORY[0x1E69E9840];
  sub_1BF028120(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF17923C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v65 - v14;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v65 - v19;
  if (*(a1 + qword_1ED8EE1F0 + 8) == 1)
  {
    sub_1BF0279C0(a1 + qword_1ED8EE210, v6, sub_1BF028120);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1BF00B048(v6, sub_1BF028120);
      v21 = sub_1BF1797DC();
      v22 = sub_1BF17ACBC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1BEFE0000, v21, v22, "SingleValueStore failed to determine storage URL", v23, 2u);
        MEMORY[0x1BFB547B0](v23, -1, -1);
      }

      goto LABEL_20;
    }

    (*(v8 + 32))(v20, v6, v7);
  }

  else
  {
    v24 = *(a1 + qword_1ED8EE1F0);
    v25 = *(a1 + *(*a1 + 168));
    v70[0] = 0;
    v26 = [v25 URLForDirectory:v24 inDomain:1 appropriateForURL:0 create:0 error:{v70, v18}];
    v27 = v70[0];
    if (!v26)
    {
      v53 = v70[0];
      v52 = sub_1BF17911C();

      swift_willThrow();
      goto LABEL_18;
    }

    v28 = v26;
    sub_1BF1791BC();
    v29 = v27;
  }

  v30 = v7;
  if (*(a1 + qword_1ED8EE208 + 8))
  {
    sub_1BF17917C();
  }

  v69 = 0;
  v31 = *(a1 + *(*a1 + 168));
  sub_1BF1791DC();
  v32 = sub_1BF17A07C();

  v33 = [v31 fileExistsAtPath:v32 isDirectory:&v69];

  v7 = v30;
  if (v33 && (v69 & 1) != 0)
  {
    goto LABEL_14;
  }

  v34 = sub_1BF17916C();
  v70[0] = 0;
  v35 = [v31 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:v70];

  if (!v35)
  {
    v51 = v70[0];
    v52 = sub_1BF17911C();

    swift_willThrow();
    (*(v8 + 8))(v20, v7);
LABEL_18:
    v54 = v52;
    v21 = sub_1BF1797DC();
    v55 = sub_1BF17ACBC();

    if (!os_log_type_enabled(v21, v55))
    {

      goto LABEL_22;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138543362;
    v58 = v52;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v59;
    *v57 = v59;
    _os_log_impl(&dword_1BEFE0000, v21, v55, "SingleValueStore failed to determine storage URL with error: %{public}@", v56, 0xCu);
    sub_1BF00B048(v57, sub_1BF082F84);
    MEMORY[0x1BFB547B0](v57, -1, -1);
    MEMORY[0x1BFB547B0](v56, -1, -1);

LABEL_20:
LABEL_22:
    v60 = v68;
    v61 = 1;
    return __swift_storeEnumTagSinglePayload(v60, v61, 1, v7);
  }

  v36 = v70[0];
LABEL_14:
  v37 = v15;
  sub_1BF17918C();
  (*(v8 + 16))(v11, v15, v30);
  v38 = sub_1BF1797DC();
  v39 = v8;
  v40 = sub_1BF17ACDC();
  if (os_log_type_enabled(v38, v40))
  {
    v41 = swift_slowAlloc();
    v67 = v37;
    v42 = v41;
    v43 = swift_slowAlloc();
    v70[0] = v43;
    *v42 = 136446210;
    v44 = sub_1BF1791DC();
    v46 = v45;
    v66 = v39;
    v47 = v11;
    v48 = *(v39 + 8);
    v48(v47, v7);
    v49 = sub_1BF01A7AC(v44, v46, v70);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_1BEFE0000, v38, v40, "SingleValueStore storage URL: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1BFB547B0](v43, -1, -1);
    v50 = v42;
    v37 = v67;
    MEMORY[0x1BFB547B0](v50, -1, -1);

    v48(v20, v7);
    v39 = v66;
  }

  else
  {

    v62 = *(v39 + 8);
    v62(v11, v30);
    v62(v20, v30);
  }

  v63 = v68;
  (*(v39 + 32))(v68, v37, v7);
  v60 = v63;
  v61 = 0;
  return __swift_storeEnumTagSinglePayload(v60, v61, 1, v7);
}

uint64_t AsyncObservable.__deallocating_deinit()
{
  AsyncObservable.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *AsyncObservable.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_29();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  return v0;
}

uint64_t sub_1BF03AFCC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = (*(a1 + 24))(a2);
    if (*(a1 + 48) == 1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t DisposableBag.init(disposeOn:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SingleValueStore.storedValue.getter()
{
  v1 = type metadata accessor for UnfairLock();
  v2 = sub_1BF17AE6C();

  Lock.sync<A>(_:)(sub_1BF03BB7C, v0, v1, v2, &protocol witness table for UnfairLock);
}

uint64_t sub_1BF03B174()
{
  v1 = v0;
  v38 = *v0;
  v2 = *(v38 + 80);
  v3 = sub_1BF17AE6C();
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - v7;
  sub_1BF028120(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF17923C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF03BE14(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_1BF00B048(v12, sub_1BF028120);
  }

  v37 = v3;
  (*(v14 + 32))(v17, v12, v13);
  v19 = *(v0 + *(*v0 + 168));
  sub_1BF1791DC();
  v20 = v14;
  v21 = sub_1BF17A07C();

  v22 = [v19 fileExistsAtPath_];

  if (!v22)
  {
    return (*(v20 + 8))(v17, v13);
  }

  v36 = v20;
  sub_1BF178CAC();
  swift_allocObject();
  sub_1BF178C9C();
  sub_1BF1791DC();
  v23 = sub_1BF17A07C();

  v24 = [v19 contentsAtPath_];

  if (v24)
  {
    v35 = v17;
    v25 = sub_1BF17935C();
    v27 = v26;

    sub_1BF178C8C();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v2);
    v28 = *(*v1 + 152);
    swift_beginAccess();
    (*(v39 + 40))(v1 + v28, v8, v37);
    swift_endAccess();

    v29 = sub_1BF1797DC();
    v30 = sub_1BF17ACDC();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1BF01A7AC(*(v1 + qword_1ED8EE1F8), *(v1 + qword_1ED8EE1F8 + 8), v40);
      _os_log_impl(&dword_1BEFE0000, v29, v30, "SingleValueStore loaded saved entry from %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFB547B0](v33, -1, -1);
      MEMORY[0x1BFB547B0](v32, -1, -1);
    }

    sub_1BF014E18(v25, v27);

    return (*(v36 + 8))(v35, v13);
  }

  else
  {
    (*(v36 + 8))(v17, v13);
  }
}

uint64_t Stack.push(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1BF17A65C();
  return sub_1BF17A5DC();
}

uint64_t sub_1BF03B8FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 160);
  if ((*(a1 + v5) & 1) == 0)
  {
    sub_1BF03B174();
    *(a1 + v5) = 1;
    v4 = *a1;
  }

  v6 = *(v4 + 152);
  swift_beginAccess();
  v7 = sub_1BF17AE6C();
  return (*(*(v7 - 8) + 16))(a2, a1 + v6, v7);
}

void *DiagnosticFileCollectionCoordinator.init(resolver:diagnosticFileCollectionNotificationName:diagnosticFilesNotificationName:logger:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_1BEFE6A78(a1, &v7[OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_resolver]);
  v13 = &v7[OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_diagnosticFilesNotificationName];
  *v13 = a4;
  *(v13 + 1) = a5;
  v14 = OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_logger;
  v15 = sub_1BF1797FC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v7[v14], a6, v15);
  v21.receiver = v7;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  v19 = sub_1BF17A07C();

  CFNotificationCenterAddObserver(v18, v17, sub_1BF0D8B24, v19, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  (*(v16 + 8))(a6, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return v17;
}

uint64_t EventLoadedLazy.__allocating_init(eventManager:event:options:loadBlock:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(v5 + 280);
  sub_1BF00CCEC(v11, v11);
  v12 = *(v11 - 8);
  swift_allocObject();
  sub_1BF17A50C();
  (*(v12 + 16))(v13, a2, v11);
  v14 = OUTLINED_FUNCTION_26_11();
  sub_1BF00CD7C(v14, v15);
  if (sub_1BF17A5AC())
  {
    v16 = OUTLINED_FUNCTION_26_11();
    v19 = sub_1BF02C7D0(v16, v17, v18);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CD0];
  }

  v22 = v10;
  v23 = v19;
  v24 = 1;
  v20 = EventLoadedLazy.__allocating_init(eventManager:event:options:loadBlock:)(a1, &v23, &v22, a4, a5);
  (*(v12 + 8))(a2, v11);
  return v20;
}

{
  v10 = swift_allocObject();
  EventLoadedLazy.init(eventManager:event:options:loadBlock:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1BF03BD5C(uint64_t a1, void *a2, void (*a3)(void *, uint64_t))
{
  v11[3] = swift_getObjectType();
  v11[0] = a1;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = *(v7 + 72);
  swift_unknownObjectRetain();
  v9 = v8(v6, v7);
  a3(v11, v9);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1BF03BE14@<X0>(uint64_t a1@<X8>)
{
  sub_1BF027464(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15[-v9];
  v11 = *(*v1 + 184);
  swift_beginAccess();
  sub_1BF0279C0(v1 + v11, v10, sub_1BF027464);
  sub_1BF028120(0);
  v13 = v12;
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    return sub_1BF05DE4C(v10, a1);
  }

  sub_1BF00B048(v10, sub_1BF027464);
  sub_1BF03A7A8(v1, a1);
  sub_1BF0279C0(a1, v6, sub_1BF028120);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  swift_beginAccess();
  sub_1BF03C310(v6, v1 + v11);
  return swift_endAccess();
}

void *EventLoadedLazy.init(eventManager:event:options:loadBlock:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  v8 = *v5;
  v9 = *a2;
  v10 = *(a2 + 8);
  v18 = *a3;
  v11 = v8;

  Lazy.init(options:loadBlock:)();
  v12 = *(v7 + 288);
  if (v10)
  {
    v13 = 11;
  }

  else
  {
    v13 = 7;
  }

  v18 = v13;
  v14 = swift_allocObject();
  v17 = *(v11 + 272);
  swift_weakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v17;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;

  sub_1BEFFAB94(v9, &v18, sub_1BF058058, v15);

  return v6;
}

uint64_t sub_1BF03C13C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF03C174()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF03C250(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1BF17B84C();
  (*(a3 + 16))(a3, v5, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF03C2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF03C310(uint64_t a1, uint64_t a2)
{
  sub_1BF027464(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ObservableProperty.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_24_13();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_7_2(v1 + v4, v9);
  OUTLINED_FUNCTION_24_13();
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1BF03C44C();
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_1BF03C44C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BF179B5C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BF179BBC();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v19 = *(v2 + 96);
  swift_beginAccess();
  v20 = *(v10 + 16);
  v20(v18, &v1[v19], v9);
  if ([objc_opt_self() isMainThread])
  {
    sub_1BF03C9AC(v18);
  }

  else
  {
    sub_1BEFF6E88();
    v30 = sub_1BF17AD5C();
    v21 = swift_allocObject();
    swift_weakInit();
    v20(v14, v18, v9);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v9;
    *(v23 + 24) = v21;
    (*(v10 + 32))(v23 + v22, v14, v9);
    aBlock[4] = sub_1BF150D4C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF0058CC;
    aBlock[3] = &block_descriptor_16;
    v24 = _Block_copy(aBlock);

    sub_1BF179B8C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1BF027D54(0);
    sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54, MEMORY[0x1E69E6328]);
    v25 = v32;
    v26 = v35;
    sub_1BF17B0BC();
    v27 = v30;
    MEMORY[0x1BFB52B50](0, v8, v25, v24);
    _Block_release(v24);

    (*(v34 + 8))(v25, v26);
    (*(v31 + 8))(v8, v33);
  }

  return (*(v10 + 8))(v18, v9);
}

uint64_t sub_1BF03C8C8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF03C8FC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BF03C9AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_getFunctionTypeMetadata1();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v4 = sub_1BF17A4EC();
  v8 = v4;
  if (v4 == sub_1BF17A5AC())
  {
  }

  while (1)
  {
    v5 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(v3 + 32 + 16 * v4);

    sub_1BF17A62C();
    v6(a1);

    v4 = v8;
    if (v8 == sub_1BF17A5AC())
    {
    }
  }

  result = sub_1BF17B23C();
  __break(1u);
  return result;
}

void sub_1BF03CB58()
{
  OUTLINED_FUNCTION_97_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21 = v9;
  v10 = *v0;
  sub_1BF17A65C();
  v11 = OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise(v11, v12, v13, v14);

  v15 = sub_1BF0057E8();
  v16 = *(v10 + 80);
  v17 = v4(v15, v16, v6);
  v18 = OUTLINED_FUNCTION_36();
  v2(v18);
  OUTLINED_FUNCTION_46();
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v6;
  v19[4] = v15;
  v19[5] = v21;
  v19[6] = v8;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v17(v20);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v15 + 16))
  {

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF03CCC8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF03CD40(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t Accessor.__deallocating_deinit()
{
  Accessor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF03CE4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v11[2] = a5;
  v12 = *(*(v8 + 80) + 16);
  v13 = a6;
  v14 = a3;
  v15 = a4;
  v9 = sub_1BEFE6EA8(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
  *&v16 = sub_1BF03CFB4(sub_1BF031230, v11, a5, v12, v9, a6, MEMORY[0x1E69E7288], &v16);
  DeferredPromise.resolve(_:)(&v16);
}

uint64_t sub_1BF03CFB4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v9 = v8;
  v81 = a2;
  v82 = a4;
  v80 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v75 = v14;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15, v16);
  v68 = a5;
  v69 = &v63 - v17;
  v66 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_4_1();
  v78 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v76 = &v63 - v24;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v64 = v26;
  v65 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  OUTLINED_FUNCTION_4_1();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v63 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_4_1();
  v77 = v37 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_2_3();
  v74 = v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_2_0();
  v73 = v45 - v44;
  v72 = a6;
  v83 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v70 = v46;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v63 - v49;
  v51 = sub_1BF17A33C();
  v84 = sub_1BF17B39C();
  v79 = sub_1BF17B3AC();
  sub_1BF17B34C();
  (*(v74 + 16))(v73, v71, a3);
  v82 = v50;
  v74 = a3;
  result = sub_1BF17A32C();
  if (v51 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v51)
  {
    v53 = (v75 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1BF17AF0C();
      result = __swift_getEnumTagSinglePayload(v34, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v80(v34, v76);
      if (v9)
      {
        v61 = OUTLINED_FUNCTION_3_12();
        v62(v61);

        (*(v66 + 32))(v67, v76, v68);
        return (*v53)(v34, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v53)(v34, AssociatedTypeWitness);
      sub_1BF17B38C();
      if (!--v51)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v54 = (v75 + 32);
  v55 = (v75 + 8);
  v56 = v69;
  while (1)
  {
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness) == 1)
    {
      v57 = OUTLINED_FUNCTION_3_12();
      v58(v57);
      (*(v64 + 8))(v30, v65);
      return v84;
    }

    (*v54)(v56, v30, AssociatedTypeWitness);
    v80(v56, v78);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v55)(v56, AssociatedTypeWitness);
    sub_1BF17B38C();
  }

  (*v55)(v56, AssociatedTypeWitness);
  v59 = OUTLINED_FUNCTION_3_12();
  v60(v59);

  return (*(v66 + 32))(v67, v78, v68);
}

uint64_t sub_1BF03D5B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = *(v4 + 80);
  (*(v5 + 32))(v10 + v9, v8, a3);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v12, sub_1BF049824, v10, TupleTypeMetadata2);
  v14 = v13;

  return v14;
}

uint64_t sub_1BF03D744()
{
  OUTLINED_FUNCTION_77_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF03D7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a5, a2, a3);
  return (*(*(a4 - 8) + 16))(a5 + v10, a1, a4);
}

void TaskScheduler.scheduleLowPriority<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  type metadata accessor for AsyncBlockOperation(0, a3, a3, a4);

  v6 = AsyncBlockOperation.__allocating_init(_:)();
  [v5 addOperation_];
}

void static TaskScheduler.scheduleLowPriority<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }

  TaskScheduler.scheduleLowPriority<A>(_:)(a1, a2, a3, a4);
}

id AsyncBlockOperation.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = objc_allocWithZone(v1);
  return AsyncBlockOperation.init(_:)(v2, v0);
}

id sub_1BF03D9CC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[*a3];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1BF03DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Promise.__allocating_init(resolver:)();
  OUTLINED_FUNCTION_66();

  return v3;
}

uint64_t Promise.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  return sub_1BF03DA2C(a1, a2, sub_1BF03DBF4);
}

{
  return sub_1BF03DA2C(a1, a2, sub_1BF0957F4);
}

uint64_t Promise.__allocating_init(resolver:)()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_42();
  Promise.init(resolver:)();
  return v0;
}

uint64_t sub_1BF03DAD4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a1(v12);
  return (*(v9 + 8))(v12, a7);
}

void Promise.error<A>(on:disposeOn:closure:)()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_122();
  v5 = v4;
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_46();
  v8 = swift_allocObject();
  v9 = *(v6 + 80);
  v8[2] = v9;
  v8[3] = v1;
  v8[4] = v7;
  v8[5] = v3;
  v8[6] = v2;
  OUTLINED_FUNCTION_58();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v5(v11);

  OUTLINED_FUNCTION_26_2();
}

unint64_t sub_1BF03DD6C()
{
  result = qword_1ED8EDCE8;
  if (!qword_1ED8EDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDCE8);
  }

  return result;
}

unint64_t sub_1BF03DDC4()
{
  result = qword_1ED8EDCE0;
  if (!qword_1ED8EDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDCE0);
  }

  return result;
}

void *sub_1BF03DE18(void *result, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)())
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    OUTLINED_FUNCTION_14_0();
    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = v12;

    sub_1BF000E90(v12, 0);
    sub_1BF006210(a3, a7, v13);
    OUTLINED_FUNCTION_31_0();

    (a7)(v14);
  }

  return result;
}

uint64_t sub_1BF03DF18(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    a1.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    a1.n128_u64[0] = *a3;
  }

  return (*(v3 + 40))(a2, a1);
}

uint64_t sub_1BF03DF58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  - infix<A, B>(_:_:)(a1, a2, a3[10], a3[11], a3[12]);
  sub_1BF17A65C();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {

    sub_1BF179E9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    type metadata accessor for Promise(0, TupleTypeMetadata2, v9, v10);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_getTupleTypeMetadata2();
    sub_1BF17A56C();
    sub_1BF179DAC();
    return Promise.__allocating_init(value:)();
  }

  else
  {
    sub_1BF179E9C();
    v12 = swift_getTupleTypeMetadata2();
    v15 = type metadata accessor for Promise(0, v12, v13, v14);
    MEMORY[0x1EEE9AC00](v15, v16);
    v11 = Promise.__allocating_init(resolver:)();
  }

  return v11;
}

uint64_t sub_1BF03E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(char *, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = swift_allocObject();
  v19 = a5[10];
  v20 = a5[11];
  v18[2] = v19;
  v18[3] = v20;
  v21 = a5[12];
  v18[4] = v21;
  v18[5] = a1;
  v18[6] = a2;

  sub_1BF03E448(a6, a7, a8, a9, a10, a11, a12, a13);
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v21;
  v22[5] = sub_1BF041A78;
  v22[6] = v18;
  v22[7] = a14;
  sub_1BF179E9C();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v23 = MEMORY[0x1E69E7CA8];
  v24 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v24, sub_1BF041A1C, v22, v23 + 8);

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v20;
  v25[4] = v21;
  v25[5] = a15;
  v25[6] = a14;
  v25[7] = sub_1BF041A78;
  v25[8] = v18;
  v25[9] = a3;
  v25[10] = a4;
  v26 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if (v26 != -1)
  {
    swift_once();
  }

  sub_1BEFF77FC(off_1ED8F0218, sub_1BF166334, v25);
}

uint64_t sub_1BF03E3F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BF03E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8)
{
  v30 = a1;
  v15 = v8[10];
  sub_1BF17A65C();
  v16 = v8[12];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v30 = sub_1BF17A9BC();
  v17 = v8[11];
  v22 = v15;
  v23 = v17;
  v24 = v16;
  v25 = a2;
  v26 = a3;
  v27 = a1;
  v28 = a4;
  v29 = a5;
  v18 = PromiseDeduper.promise(key:loggingKey:createBlock:)(&v30, a7, a8, sub_1BF03E554, v21);

  return v18;
}

uint64_t sub_1BF03E568(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1(a3);
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  v13[6] = a5;
  v14 = sub_1BF179E9C();

  v15 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v15, sub_1BF03FF80, v13, v14);
  v17 = v16;

  return v17;
}

void sub_1BF03E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_32();
  v57 = v24;
  v58 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v63 = v32;
  v64 = v31;
  v61 = v33;
  v34 = *v22;
  OUTLINED_FUNCTION_2_3();
  v36 = v35;
  v38 = *(v37 + 64);
  v62 = a22;
  v59 = a21;
  MEMORY[0x1EEE9AC00](v39, v40);
  v41 = (v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for DeferredPromise(0, v44, v42, v43);
  v60 = v22[2];

  v45 = sub_1BF0057E8();
  v46 = *(v34 + 80);
  v47 = v26(v45, v46, v28);
  v56[1] = v48;
  v56[2] = v47;
  v49 = OUTLINED_FUNCTION_36();
  v57 = v57(v49);
  (*(v36 + 16))(v41, v58, v30);
  v50 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v51 = (v38 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 2) = v46;
  *(v52 + 3) = v30;
  *(v52 + 4) = v28;
  *(v52 + 5) = v45;
  (*(v36 + 32))(&v52[v50], v41, v30);
  v53 = &v52[v51];
  v54 = v63;
  *v53 = v61;
  *(v53 + 1) = v54;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v41(v55);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v45 + 16))
  {

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF03E908(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF03E980(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

void sub_1BF03E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a1;
  v15[6] = a2;

  a5(a7);
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = sub_1BF041720;
  v16[6] = v15;
  v16[7] = a7;
  sub_1BF179E9C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v17 = sub_1BF041694();
  Promise.always(on:closure:)(v17, sub_1BF0416F0, v16);
}

uint64_t sub_1BF03EB60(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v46 = a1;
  v47 = v3;
  v4 = *(v2 + 80);
  v50 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v45 = v5;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v44 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  v19 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF6E88();
  *v25 = sub_1BF17AD5C();
  (*(v21 + 104))(v25, *MEMORY[0x1E69E8020], v19);
  v26 = sub_1BF179C8C();
  result = (*(v21 + 8))(v25, v19);
  if (v26)
  {
    v28 = v46;
    v48 = *(v10 + 16);
    v49 = v10 + 16;
    v48(v14, v46, v4);
    swift_beginAccess();
    v29 = *(v47 + 88);
    sub_1BF17A9AC();
    sub_1BF17A94C();
    (*(v10 + 8))(v18, v4);
    swift_endAccess();
    v54[0] = v4;
    v54[1] = v4;
    v54[2] = v29;
    v54[3] = v29;
    type metadata accessor for EventManager.EventTrigger(0, v54);
    v54[0] = sub_1BF179CFC();
    v53 = sub_1BF179CFC();
    v30 = sub_1BF03F108();
    v31 = sub_1BF17A4EC();
    v52 = v31;
    if (v31 != sub_1BF17A5AC())
    {
      v34 = (v45 + 8);
      v47 = v30;
      do
      {
        v35 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v35)
        {
          v36 = *(v30 + 32 + 8 * v31);
        }

        else
        {
          v36 = sub_1BF17B23C();
        }

        sub_1BF17A62C();
        v48(v9, v28, v4);
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
        v37 = sub_1BEFFAEDC(v36, v9);
        (*v34)(v9, v50);
        if (v37 & 1) != 0 && (v51 = v36, sub_1BF17A65C(), , sub_1BF17A5DC(), (*(v36 + 16)))
        {
        }

        else
        {
          v51 = v36;
          sub_1BF17A65C();
          sub_1BF17A5DC();
        }

        v38 = sub_1BF17A5AC();
        v31 = v52;
      }

      while (v52 != v38);
    }

    sub_1BF03F140(v54[0]);
    v32 = v53;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v33 = sub_1BF17A4EC();

    v52 = v33;
    if (v33 != sub_1BF17A5AC())
    {
      do
      {
        v39 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v39)
        {
          v40 = *(v32 + 32 + 8 * v33);
        }

        else
        {
          v40 = sub_1BF17B23C();
        }

        sub_1BF17A62C();
        v41 = *(v40 + 32);

        v41(v42);

        v43 = sub_1BF17A5AC();
        v33 = v52;
      }

      while (v52 != v43);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF03F140(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void + infix<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v68 = v0;
  v77 = v2;
  v78 = v1;
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_25_7(v6, v4, v1, v2);
  v9 = OUTLINED_FUNCTION_68(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = v61 - v11;
  OUTLINED_FUNCTION_2_3();
  v63 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v65 = v16 - v15;
  OUTLINED_FUNCTION_2_3();
  v62 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_14_1();
  v72 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_1_16();
  v75 = v25;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_10_21();
  v74 = v29;
  v79 = v7;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v30 = v28;
    v31 = sub_1BF17B47C();
    v32 = v30;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = v31 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    v33 = v5 + 64;
    OUTLINED_FUNCTION_18_0();
    v35 = v37 & v38;
    v36 = v5;
  }

  v39 = (v62 + 32);
  v40 = (v63 + 32);
  v41 = (v34 + 64) >> 6;
  v61[2] = v62 + 16;
  v61[0] = v34;
  v61[1] = v63 + 16;
  v69 = (v32 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v42 = 0;
  v66 = v22;
  v64 = v3;
  v71 = v33;
  v73 = v36;
  v43 = v35;
  while (1)
  {
    v70 = v43;
    v76 = v42;
    if ((v36 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1BF17B48C())
    {
      v54 = 1;
      v33 = v43;
      v46 = v75;
      v45 = v76;
      goto LABEL_16;
    }

    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v51 = v65;
    v52 = v77;
    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v44 = v76;
    v33 = v43;
LABEL_15:
    v53 = *(v64 + 48);
    v3 = v64;
    v46 = v75;
    (*v39)();
    (*v40)((v46 + v53), v51, v52);
    v54 = 0;
    v45 = v44;
LABEL_16:
    v47 = v74;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v46, v54, 1, v3);
    (*v69)(v47, v46, v72);
    if (__swift_getEnumTagSinglePayload(v47, 1, v3) == 1)
    {
      sub_1BF003FE8(v73);
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v55 = *(v3 + 48);
    v22 = v66;
    (*v39)(v66, v47, v78);
    v56 = v47 + v55;
    v57 = v77;
    (*v40)(v67, v56, v77);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
    sub_1BF179E9C();
    sub_1BF179EBC();
    v42 = v45;
    v43 = v33;
    v33 = v71;
    v36 = v73;
  }

  v44 = v42;
  if (v43)
  {
LABEL_12:
    OUTLINED_FUNCTION_21_8();
    v49 = v48 | (v44 << 6);
    (*(v62 + 16))(v22, *(v36 + 48) + *(v62 + 72) * v49, v78);
    v50 = *(v36 + 56) + *(v63 + 72) * v49;
    v51 = v65;
    v52 = v77;
    (*(v63 + 16))(v65, v50, v77);
    goto LABEL_15;
  }

  v45 = v42;
  v47 = v74;
  v46 = v75;
  while (1)
  {
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v44 >= v41)
    {
      v33 = 0;
      v54 = 1;
      goto LABEL_17;
    }

    ++v45;
    if (*(v33 + 8 * v44))
    {
      v36 = v73;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BF03F6B0(uint64_t a1, uint64_t (*a2)(uint64_t, void, char *, void, void, void, void))
{
  v3 = *(*(v2 + 3) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = &v2[(*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a2(a1, *(v2 + 5), &v2[v4], *v5, *(v5 + 1), *(v2 + 2), *(v2 + 4));
}

uint64_t sub_1BF03F724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*a2 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v18 - v14;
  (*(v8 + 16))(v10, v16, v7, v13);
  sub_1BF17A3EC();
  DeferredPromise.resolve(_:)(v15);
  return (*(v8 + 8))(v15, v7);
}

uint64_t objectdestroy_74Tm()
{
  OUTLINED_FUNCTION_2_3();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 48) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = OUTLINED_FUNCTION_92();
  v6(v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t static Manager.fetch(keys:cachePolicy:fetchWith:readCacheWithAge:writeCacheWith:deduper:options:loggingKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void (*a11)(char *, uint64_t, uint64_t), uint64_t a12)
{
  v13 = v12;
  v51 = *a2;
  v19 = *(a2 + 8);
  v48 = *a10;
  v53 = a1;
  sub_1BF17A65C();
  swift_getWitnessTable();
  v20 = sub_1BF17AB6C();
  if (v20)
  {
    if (qword_1ED8EF4B0 != -1)
    {
      OUTLINED_FUNCTION_0_74(&qword_1ED8EF4B0);
    }

    v22 = sub_1BF1797FC();
    __swift_project_value_buffer(v22, qword_1ED8F52B0);
    v23 = sub_1BF1797DC();
    v24 = sub_1BF17ACDC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BEFE0000, v23, v24, "Manager will not fetch because no keys were specified", v25, 2u);
      MEMORY[0x1BFB547B0](v25, -1, -1);
    }

    v26 = sub_1BF179E9C();
    type metadata accessor for Promise(0, v26, v27, v28);
    swift_getTupleTypeMetadata2();
    sub_1BF17A56C();
    v53 = sub_1BF179DAC();
    return Promise.__allocating_init(value:)();
  }

  v46 = a8;
  v47 = a5;
  if (a12)
  {
    v45 = a6;
    if (qword_1ED8EF4B0 != -1)
    {
      OUTLINED_FUNCTION_0_74(&qword_1ED8EF4B0);
    }

    v30 = sub_1BF1797FC();
    __swift_project_value_buffer(v30, qword_1ED8F52B0);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v31 = sub_1BF1797DC();
    v32 = sub_1BF17ACDC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v33 = 136315394;
      v52 = v44;
      v53 = v51;
      v54 = v19;
      v34 = CachePolicy.description.getter();
      v36 = sub_1BF01A7AC(v34, v35, &v52);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1BF01A7AC(a11, a12, &v52);
      _os_log_impl(&dword_1BEFE0000, v31, v32, "Manager will fetch using %s: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v44, -1, -1);
      MEMORY[0x1BFB547B0](v33, -1, -1);
    }

    a6 = v45;
  }

  if (!v19)
  {
    v42 = 0;
    goto LABEL_18;
  }

  if (v19 != 1 && (v51 - 2) >= 2)
  {
    if (!v51)
    {
      return sub_1BF03E448(a1, a3, a4, a7, v46, a9, a11, a12);
    }

    v51 = 0;
    v42 = 1;
LABEL_18:
    v53 = v51;
    v54 = v42;
    return a5(a1, &v53);
  }

  MEMORY[0x1EEE9AC00](v20, v21);
  v37 = sub_1BF179E9C();
  firstly<A>(closure:)(sub_1BF03FF54);
  v38 = swift_allocObject();
  *(v38 + 16) = v13;
  *(v38 + 24) = a1;
  *(v38 + 32) = v51;
  *(v38 + 40) = v19;
  *(v38 + 48) = a3;
  *(v38 + 56) = a4;
  *(v38 + 64) = v47;
  *(v38 + 72) = a6;
  *(v38 + 80) = a7;
  *(v38 + 88) = v46;
  *(v38 + 96) = a9;
  *(v38 + 104) = v48;
  *(v38 + 112) = a11;
  *(v38 + 120) = a12;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v39 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v39, sub_1BF040860, v38, v37);
  v41 = v40;

  return v41;
}

uint64_t sub_1BF03FEF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BF03FFA4(unint64_t a1, unsigned __int8 a2, uint64_t (*a3)(uint64_t, uint64_t *, __n128), __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 >= 2u)
  {
    v13 = a1 > 2;
    v14 = 1;
    return a3(a6, &v13, a4);
  }

  a4.n128_u64[0] = a1;
  if (*&a1 > 0.0)
  {
    v13 = a1;
    v14 = 0;
    return a3(a6, &v13, a4);
  }

  v10 = sub_1BF179E9C();
  type metadata accessor for Promise(0, v10, v11, v12);
  sub_1BF179CEC();
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF040080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1BFB51C20](*a1, a4, a5, a6);
  v7 = sub_1BF179E9C();
  v10 = type metadata accessor for Promise(0, v7, v8, v9);
  if (v6)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return Promise.__allocating_init(value:)();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10, v11);
    return Promise.__allocating_init(resolver:)();
  }
}

uint64_t sub_1BF0407B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = *a1;
  v17 = a13;
  return sub_1BF040E54(a3, v15, a3, a6, a7, a8, a9, a10, a11, a12, &v17);
}

void static Cache.+= infix(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v72 = *(v0 + 88);
  type metadata accessor for CacheEntry(255, v72, v5, v6);
  OUTLINED_FUNCTION_12_1();
  v61 = v7;
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_68(v8);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_6_30();
  v60 = v11;
  OUTLINED_FUNCTION_2_3();
  v59 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_9_2();
  v71 = v15;
  v16 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v58 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_9_2();
  v70 = v20;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_1();
  v66 = v21;
  v65 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_4_1();
  v68 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_10_21();
  v67 = v30;
  v62 = v4;
  v56 = *(v4 + 24);
  UnfairLock.lock()();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v31 = sub_1BF17B47C();
    v57 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v31 | 0x8000000000000000;
  }

  else
  {
    v57 = v2 + 64;
    OUTLINED_FUNCTION_18_0();
    v33 = v35 & v36;
    v34 = v2;
  }

  v37 = (v58 + 32);
  v38 = (v32 + 64) >> 6;
  v63 = (v23 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v39 = 0;
  v69 = v16;
  v64 = v34;
  v40 = v33;
  while ((v34 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF17B48C())
    {
      v50 = 1;
      v55 = v40;
      v43 = v39;
      v73 = v55;
      v48 = v66;
      v44 = v68;
      goto LABEL_15;
    }

    sub_1BF17B82C();
    swift_unknownObjectRelease();
    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v42 = v39;
    v73 = v40;
LABEL_14:
    v48 = v66;
    v44 = v68;
    (*v37)();
    OUTLINED_FUNCTION_17_11();
    v49();
    v50 = 0;
    v43 = v42;
LABEL_15:
    v45 = v67;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v44, v50, 1, v48);
    (*v63)(v45, v44, v65);
    if (__swift_getEnumTagSinglePayload(v45, 1, v48) == 1)
    {
      sub_1BF003FE8(v64);
      os_unfair_lock_unlock(*(v56 + 16));
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v51 = *(v48 + 48);
    v16 = v69;
    (*v37)(v70, v45, v69);
    (*(v59 + 32))(v71, v45 + v51, v72);
    sub_1BF01BEC4(v71, v72, v60);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v61);
    OUTLINED_FUNCTION_7_2(v62 + 16, &v74);
    OUTLINED_FUNCTION_17_11();
    sub_1BF179E9C();
    sub_1BF179EBC();
    swift_endAccess();
    v39 = v43;
    v40 = v73;
    v34 = v64;
  }

  v41 = v40;
  v42 = v39;
  if (v40)
  {
LABEL_11:
    OUTLINED_FUNCTION_22_9(v41);
    v47 = v46 | (v42 << 6);
    (*(v58 + 16))(v70, *(v34 + 48) + *(v58 + 72) * v47, v16);
    (*(v59 + 16))(v71, *(v34 + 56) + *(v59 + 72) * v47, v72);
    goto LABEL_14;
  }

  v43 = v39;
  v45 = v67;
  v44 = v68;
  while (1)
  {
    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
      v73 = 0;
      v50 = 1;
      v48 = v66;
      goto LABEL_16;
    }

    v41 = *(v57 + 8 * v42);
    ++v43;
    if (v41)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1BF040E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v29 = *a11;
  v13 = v11[10];
  v14 = v11[11];
  v15 = v11[12];
  v16 = sub_1BF179E9C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  firstly<A>(closure:)(sub_1BF04114C);
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  OUTLINED_FUNCTION_46();
  v19 = swift_allocObject();
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = sub_1BF041C70;
  v19[6] = v18;
  v20 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v20, sub_1BF041C90, v19, v16);

  v21 = swift_allocObject();
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v29;
  v21[6] = a1;
  v21[7] = a6;
  v21[8] = a7;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v22 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v22, sub_1BF041DAC, v21, TupleTypeMetadata2);

  v23 = swift_allocObject();
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  OUTLINED_FUNCTION_46();
  v24 = swift_allocObject();
  v24[2] = v13;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = sub_1BF042164;
  v24[6] = v23;
  v25 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v25, sub_1BF042184, v24, v16);
  v27 = v26;

  return v27;
}

uint64_t sub_1BF0410FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF04118C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = Stack.startIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1BF0411C4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = Stack.endIndex.getter(a2);
  *a1 = result;
  return result;
}

void *StubNetworkProxy.init(data:response:metrics:error:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 1) = xmmword_1BF188D40;
  v5[6] = 0;
  v5[5] = 0;
  v5[4] = 0;
  OUTLINED_FUNCTION_125((v5 + 2), v21);
  v9 = v5[2];
  v10 = v5[3];
  v5[2] = a1;
  v5[3] = a2;
  sub_1BF00F5E0(a1, a2);
  sub_1BF00F5F4(v9, v10);
  sub_1BF00F5F4(a1, a2);
  OUTLINED_FUNCTION_125((v5 + 4), v20);
  v11 = v5[4];
  v5[4] = a3;

  OUTLINED_FUNCTION_125((v5 + 5), v19);
  v12 = v5[5];
  v5[5] = a4;

  OUTLINED_FUNCTION_125((v5 + 6), v18);
  v13 = v5[6];
  v5[6] = a5;
  v14 = a5;

  v5[7] = 0;
  return v5;
}

uint64_t StubNetworkProxy.__deallocating_deinit()
{
  StubNetworkProxy.deinit();
  v0 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t StubNetworkProxy.deinit()
{
  sub_1BF00F5F4(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1BF041398(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void when2<A, B>(on:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_80();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v57 = v26;
  v28 = *(*v27 + 80);
  v29 = *(*v24 + 80);
  v30 = type metadata accessor for WhenEither2(255, v28, v29, v23);
  v31 = OUTLINED_FUNCTION_10_23();
  v35 = type metadata accessor for Promise(v31, v32, v33, v34);
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v36 = sub_1BF17A50C();
  v38 = v37;
  v39 = OUTLINED_FUNCTION_24_11(&unk_1F3DC1C10);
  *(v39 + 16) = v28;
  *(v39 + 24) = v29;
  v40 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v40, sub_1BF04237C, v39, v30);
  v42 = v41;

  *v38 = v42;
  v43 = OUTLINED_FUNCTION_24_11(&unk_1F3DC1C38);
  *(v43 + 16) = v28;
  *(v43 + 24) = v29;
  v44 = sub_1BF014EDC();
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)(v45, v46, v47, v30);
  OUTLINED_FUNCTION_17_9();

  v38[1] = v25;
  sub_1BF00CD7C(v36, v35);
  a10 = v48;
  OUTLINED_FUNCTION_39_0();
  v49 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  WitnessTable = swift_getWitnessTable();
  static Promise.all<A>(on:_:)(v57, &a10, v49, WitnessTable);
  OUTLINED_FUNCTION_17_9();

  v51 = OUTLINED_FUNCTION_24_11(&unk_1F3DC1C60);
  *(v51 + 16) = v28;
  *(v51 + 24) = v29;
  OUTLINED_FUNCTION_10_23();
  sub_1BF17A65C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_1BF014EDC();
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)(v54, v55, v56, TupleTypeMetadata2);
  OUTLINED_FUNCTION_31_10();

  OUTLINED_FUNCTION_33();
}

void sub_1BF041640()
{
  if (!qword_1ED8EFB90)
  {
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EFB90);
    }
  }
}

id sub_1BF041694()
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v1 = off_1ED8F0218;

  return v1;
}

uint64_t sub_1BF041720(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4 = a1;
  return v2(&v4);
}

uint64_t static Manager.fetch(keys:cachePolicy:fetchWith:readCacheWith:writeCacheWith:deduper:options:loggingKey:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v17 = *(a2 + 8);
  v18 = *a10;
  v24 = *a2;
  v25 = v17;
  OUTLINED_FUNCTION_46();
  v19 = swift_allocObject();
  *(v19 + 16) = *(v10 + 80);
  *(v19 + 32) = *(v10 + 96);
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  v23 = v18;

  v20 = static Manager.fetch(keys:cachePolicy:fetchWith:readCacheWithAge:writeCacheWith:deduper:options:loggingKey:)(a1, &v24, a3, a4, sub_1BF03DF18, v19, a7, a8, a9, &v23, 0, 0);

  return v20;
}

uint64_t sub_1BF041854()
{

  OUTLINED_FUNCTION_46();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF041888(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_11Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_11Tm_1()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_11Tm_2()
{

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_11Tm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1BF041A5C()
{
  qword_1ED8EB000 = &unk_1F3DB6A50;
  *algn_1ED8EB008 = 0;
  qword_1ED8EB010 = 0;
  unk_1ED8EB018 = 0;
}

void __swiftcall Version.init(_:)(TeaFoundation::Version_optional *__return_ptr retstr, Swift::String_optional a2)
{
  if (a2.value._object && (sub_1BF024410(a2.value._countAndFlagsBits, a2.value._object, &v5), , v5))
  {
    v3 = v7;
    v4 = v6;
    retstr->value.base.numbers._rawValue = v5;
    retstr->value.qualifier.value.name = v4;
    retstr->value.qualifier.value.version.value.numbers._rawValue = v3;
  }

  else
  {
    *&retstr->value.base.numbers._rawValue = 0u;
    *&retstr->value.qualifier.value.name._object = 0u;
  }
}

void static Version.min.getter()
{
  if (qword_1ED8EAFF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_37(&qword_1ED8EB000);

  sub_1BF026144(v0, v1, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF041B7C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  a3(v5);
}

void static Version.max.getter()
{
  if (qword_1ED8EB020 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_37(&qword_1ED8EB028);

  sub_1BF026144(v0, v1, v2);
}

void sub_1BF041CC8()
{
  qword_1ED8EB028 = &unk_1F3DB6A78;
  unk_1ED8EB030 = 0;
  qword_1ED8EB038 = 0;
  unk_1ED8EB040 = 0;
}

uint64_t sub_1BF041CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BF179E9C();
  type metadata accessor for Promise(0, v4, v5, v6);
  + infix<A, B>(_:_:)();
  return Promise.__allocating_init(value:)();
}

uint64_t Promise.__allocating_init(value:)()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  Promise.init(value:)();
  return v0;
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroy_7Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF041E50(uint64_t *a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  if ((a2 & 2) != 0)
  {
    v29 = v8;
    v18 = - infix<A, B>(_:_:)(a3, v12, a6, a7, a8);
    v27 = v18;
    sub_1BF17A65C();
    swift_getWitnessTable();
    if (sub_1BF17AB6C())
    {

      sub_1BF179E9C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      type metadata accessor for Promise(0, TupleTypeMetadata2, v20, v21);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      swift_getTupleTypeMetadata2();
      sub_1BF17A56C();
      v27 = v12;
      v28 = sub_1BF179DAC();
      return Promise.__allocating_init(value:)();
    }

    else
    {
      v27 = 0;
      LOBYTE(v28) = 1;
      a4(v18, &v27);

      v22 = swift_allocObject();
      v22[2] = a6;
      v22[3] = a7;
      v22[4] = a8;
      v22[5] = v12;
      sub_1BF179E9C();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v23 = swift_getTupleTypeMetadata2();
      v24 = sub_1BF014EDC();
      Promise.then<A>(on:closure:)(v24, sub_1BF166314, v22, v23);
      v16 = v25;
    }
  }

  else
  {
    sub_1BF179E9C();
    v13 = swift_getTupleTypeMetadata2();
    type metadata accessor for Promise(0, v13, v14, v15);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_getTupleTypeMetadata2();
    sub_1BF17A56C();
    v27 = v12;
    v28 = sub_1BF179DAC();
    return Promise.__allocating_init(value:)();
  }

  return v16;
}

uint64_t sub_1BF042114()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation16VersionQualifierVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF04219C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Multicaster.init()@<X0>(uint64_t *a2@<X8>)
{
  sub_1BF1794FC();
  sub_1BF17A7BC();
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  OUTLINED_FUNCTION_0_89();
  sub_1BEFE7314(v3, v4, MEMORY[0x1E69695B8]);
  result = sub_1BF179DAC();
  *a2 = result;
  return result;
}

unint64_t sub_1BF042284()
{
  result = qword_1ED8ECD50[0];
  if (!qword_1ED8ECD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8ECD50);
  }

  return result;
}

uint64_t sub_1BF042308()
{
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_20();
  (*(v2 + 16))(v1);
  v3 = OUTLINED_FUNCTION_10_23();
  type metadata accessor for WhenEither2(v3, v4, v0, v5);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF0423DC()
{
  v0 = sub_1BF04240C();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF04240C()
{

  return v0;
}

uint64_t Accessor.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Accessor(0, a3, a3, a4);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v5;
  v10 = Accessor.__allocating_init(_:)(sub_1BF105B68, v9);

  return v10;
}

uint64_t sub_1BF0424D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t Accessor.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1BF042564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF0425B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation12NetworkProxyO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t firstly<A>(on:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DeferredPromise(0, a4, a3, a4);
  v7 = DeferredPromise.__allocating_init()();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v7;

  v9 = sub_1BF006210(a1, sub_1BF042734, v8);

  v11 = (v9)(v10);
  result = OUTLINED_FUNCTION_10_3(v11);
  v13 = *(v7 + 16);
  if (v13)
  {

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0426F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF042740(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();

  v4 = MEMORY[0x1E69E7CA8];
  v5 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v5, sub_1BF0428CC, a3, v4 + 8);

  v6 = qword_1ED8F0210;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_1BEFF77FC(off_1ED8F0218, j___s13TeaFoundation15DeferredPromiseC6rejectyys5Error_pF_0, a3);
}

uint64_t static Version.< infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5, a6, a7, a8, *a2, v32, v34, *a1);
  v17 = static VersionNumber.== infix(_:_:)(v15, v16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if (v17)
  {
    if (v10)
    {
      if (v13)
      {
        v26 = OUTLINED_FUNCTION_1_58(v18, v19, v20, v21, v22, v23, v24, v25, v12, v13, v14, v9);
        v28 = static VersionQualifier.< infix(_:_:)(v26, v27);
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_1_58(v18, v19, v20, v21, v22, v23, v24, v25, v11, v33, v35, v8);
    v28 = static VersionNumber.< infix(_:_:)(v29, v30);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return v28 & 1;
}

uint64_t DoublyLinkedList.append(node:)(uint64_t a1)
{
  OUTLINED_FUNCTION_125(v1 + 16, v10);
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_125(v1 + 24, v9);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_125(a1 + *(v3 + 104), v8);
    swift_weakAssign();
    v4 = *(v1 + 24);
    if (v4)
    {
      v5 = *(*v4 + 96);
      OUTLINED_FUNCTION_125(v4 + v5, &v7);
      *(v4 + v5) = a1;
    }

    *(v1 + 24) = a1;
  }

  else
  {
    *(v1 + 16) = a1;
    OUTLINED_FUNCTION_125(v1 + 24, v9);
    OUTLINED_FUNCTION_6_41();
  }
}

uint64_t static VersionNumber.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  v3 = *(*a2 + 16);
  if (v3 <= v2)
  {
    v4 = *(*result + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    if (v5 >= v2)
    {
      if (v5 >= v3)
      {
        goto LABEL_14;
      }

      v6 = 0;
    }

    else
    {
      v6 = *(*result + 32 + 8 * v5);
      if (v5 >= v3)
      {
        if (v6)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }

    if (v5 >= v3)
    {
      break;
    }

    if (v6 != *(*a2 + 32 + 8 * v5))
    {
      return 0;
    }

LABEL_14:
    if (v4 == ++v5)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void AsyncObservable.value.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 104);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 16))(a1, v2 + v6);
  sub_1BEFF99D8(v2);
}

BOOL static VersionNumber.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  v2 = *(*result + 16);
  v3 = *(*a2 + 16);
  if (v3 <= v2)
  {
    v4 = *(*result + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *result + 32;
  v7 = *a2 + 32;
  while (1)
  {
    if (v5 >= v2)
    {
      if (v5 >= v3)
      {
        goto LABEL_14;
      }

      v8 = 0;
    }

    else
    {
      v8 = *(v6 + 8 * v5);
      if (v5 >= v3)
      {
        if (v8)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    if (v5 >= v3)
    {
      break;
    }

    v9 = *(v7 + 8 * v5);
    if (v8 != v9)
    {
      if (v5 >= v2)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v6 + 8 * v5);
LABEL_18:
        if (v5 >= v3)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v7 + 8 * v5);
        }
      }

      return v8 < v9;
    }

LABEL_14:
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

BOOL Locale.textDirectionIsRTL.getter()
{
  v0 = sub_1BF1795AC();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  OUTLINED_FUNCTION_1_28();
  sub_1BF042FE0(0, v11, v12);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v23 - v15;
  if (qword_1ED8ED680 != -1)
  {
    swift_once();
  }

  if (byte_1ED8ECA48)
  {
    return 1;
  }

  if (qword_1ED8ED688 != -1)
  {
    swift_once();
  }

  if (byte_1ED8ECA49)
  {
    return 1;
  }

  sub_1BF1795BC();
  sub_1BF17957C();
  v18 = *(v2 + 8);
  v18(v10, v0);
  v19 = sub_1BF17952C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
  {
    OUTLINED_FUNCTION_1_28();
    sub_1BF0C83E0(v16, v20, v21);
    return 0;
  }

  else
  {
    sub_1BF17951C();
    (*(*(v19 - 8) + 8))(v16, v19);
    sub_1BF17956C();
    v22 = sub_1BF17958C();
    v18(v6, v0);
    return v22 == 2;
  }
}

uint64_t sub_1BF042F78()
{
  sub_1BF042FB8(v0 + 16);
  sub_1BF042FB8(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1BF042FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF043034()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1BF17A07C();
  v2 = [v0 BOOLForKey_];

  byte_1ED8ECA48 = v2;
}

uint64_t sub_1BF0430C4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v4;
  v2[1] = sub_1BF043BE4;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x4165766C6F736572, 0xEE002928636E7973, sub_1BF0432F4, v6, v3);
}

uint64_t sub_1BF043198()
{
  result = sub_1BF0431BC();
  byte_1ED8ECA49 = result & 1;
  return result;
}

uint64_t sub_1BF0431BC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 arguments];

  v2 = sub_1BF17A4DC();
  result = sub_1BF0432FC(0xD000000000000023, 0x80000001BF18DA00, v2);
  if ((v4 & 1) != 0 || (v5 = *(v2 + 16), result >= v5))
  {

    return 0;
  }

  else if (result + 1 >= v5)
  {
    __break(1u);
  }

  else
  {
    v6 = v2 + 16 * (result + 1);
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v8 == 5457241 && v7 == 0xE300000000000000)
    {

      return 1;
    }

    else
    {
      v10 = sub_1BF17B86C();

      return v10 & 1;
    }
  }

  return result;
}

uint64_t sub_1BF0432FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1BF17B86C() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1BF043388(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = *(*a2 + 80);
  sub_1BEFF79E8();
  v4 = sub_1BF17A6DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  v27 = firstly<A>(closure:)(sub_1BF04380C);
  v24 = *(v5 + 16);
  v24(v9, a1, v4);
  v10 = *(v5 + 80);
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v30 = v3;
  v28 = *(v5 + 32);
  v28(v12 + v11, v9, v4);
  v13 = MEMORY[0x1E69E7CA8];
  v14 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v14, sub_1BF043A5C, v12, v13 + 8);
  v23 = v15;

  v26 = v5 + 16;
  v16 = v24;
  v24(v9, v29, v4);
  v17 = v16;
  v27 = v6;
  v25 = v10;
  v18 = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = v30;
  v28(v19 + v11, v9, v4);
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v20 = off_1ED8F0218;
  sub_1BEFF77FC(off_1ED8F0218, sub_1BF154F88, v19);

  v17(v9, v29, v4);
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  v28(v21 + v18, v9, v4);
  sub_1BF03952C(v20, sub_1BF155020, v21);
}

void *sub_1BF04370C(uint64_t a1, uint64_t a2, void *(*a3)(void *__return_ptr, uint64_t))
{
  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    result = a3(v7, a1);
    if (LOBYTE(v7[0]) == 1)
    {
      swift_beginAccess();
      *(a2 + 16) = 0;
    }
  }

  return result;
}

id AsyncTaskOperation.init<A>(object:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xF0);
  sub_1BEFF79E8();
  v11 = sub_1BF17A7EC();
  type metadata accessor for Lazy(0, v11, v12, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = a2;
  v15[6] = a3;
  v19 = 0;

  *(v5 + qword_1ED8EB978) = Lazy.__allocating_init(options:loadBlock:)(&v19, sub_1BF0443D4, v15);
  v18.receiver = v5;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_1BF0439EC()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF043A24()
{

  v0 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF043A5C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1BEFF79E8();
  v4 = *(sub_1BF17A6DC() - 8);
  return sub_1BF043AF8(a1, v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)), v3);
}

uint64_t sub_1BF043AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1BEFF79E8();
  sub_1BF17A6DC();
  return sub_1BF17A6CC();
}

uint64_t sub_1BF043BE4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF15496C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v5();
  }
}

uint64_t sub_1BF043D04(void *a1, uint64_t a2)
{
  v4 = a1;
  if (a1)
  {
    v5 = *MEMORY[0x1E69E7D40] & *v2;
    OUTLINED_FUNCTION_14_0();
    a1 = swift_allocObject();
    a1[2] = *(v5 + 80);
    a1[3] = v4;
    a1[4] = a2;
    v6 = sub_1BF02E89C;
  }

  else
  {
    v6 = 0;
  }

  v12[0] = v6;
  v12[1] = a1;

  v7 = OUTLINED_FUNCTION_13_0();
  sub_1BF009984(v7, v8);
  Atomic.wrappedValue.setter(v12);

  v9 = OUTLINED_FUNCTION_13_0();
  return sub_1BEFE52DC(v9, v10);
}

uint64_t AsyncTaskOperation.perform(completion:)(uint64_t a1, uint64_t a2)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_1BF089AC0();
}

uint64_t sub_1BF043F10()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF043F50()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_15_7();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_52(v6);

  return sub_1BF043FF8(v8, v1, v2, v3, v4, v0);
}

uint64_t sub_1BF043FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *a4;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1BF17A6EC();
  v6[7] = v9;
  v6[8] = *(v9 - 8);
  v6[9] = swift_task_alloc();
  v10 = *((v8 & v7) + 0xF0);
  v6[10] = v10;
  v13 = type metadata accessor for Result(0, v10, v11, v12);
  v6[11] = v13;
  v6[12] = *(v13 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(v10 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0441A0, 0, 0);
}

uint64_t sub_1BF0441A0()
{
  OUTLINED_FUNCTION_5();
  sub_1BF004F64((v0 + 2));
  v1 = v0[2];
  v0[16] = v1;
  v2 = swift_task_alloc();
  v0[17] = v2;
  v3 = sub_1BEFF79E8();
  v0[18] = v3;
  *v2 = v0;
  v2[1] = sub_1BF053908;
  v4 = v0[15];
  v5 = v0[10];
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v4, v1, v5, v3, v6);
}

uint64_t sub_1BF044274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a1;
  v17[7] = a2;
  v17[8] = a3;

  result = sub_1BF1687E8(0, 0, v15, &unk_1BF18AF20, v17, a4);
  *a6 = result;
  return result;
}

uint64_t sub_1BF04438C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF0443E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_3_52(v7);

  return sub_1BF0448C0(v9, v1, v2, v3, v4, v5);
}

uint64_t sub_1BF0444B0()
{
  OUTLINED_FUNCTION_13_2();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v8 = (v0[7] + *v0[7]);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1BF0533AC;
    v4 = v0[5];

    return v8(v4, v2);
  }

  else
  {
    sub_1BF1691AC();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_9();

    return v7();
  }
}

uint64_t static DateInterval.tf_safe(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BF1794AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27[-v13];
  sub_1BF044868();
  if (sub_1BF179F8C())
  {
    v28 = sub_1BF17ACCC();
    sub_1BF071C70(0);
    v15 = swift_allocObject();
    v29 = a3;
    v16 = v15;
    *(v15 + 16) = xmmword_1BF17E820;
    v17 = sub_1BF1793BC();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    v16[7] = MEMORY[0x1E69E6158];
    v21 = sub_1BF071CD8();
    v16[8] = v21;
    v16[4] = v17;
    v16[5] = v19;
    v22 = sub_1BF1793BC();
    v16[12] = v20;
    v16[13] = v21;
    v16[9] = v22;
    v16[10] = v23;
    sub_1BF071C2C();
    v24 = sub_1BF17AE3C();
    sub_1BF1797CC("Invalid safe date interval start=%{public}@, end=%{public}@", 59, 2, &dword_1BEFE0000, v24, v28, v16);

    (*(v7 + 16))(v14, a1, v6);
    return sub_1BF178DBC();
  }

  else
  {
    v26 = *(v7 + 16);
    v26(v14, a1, v6);
    v26(v10, a2, v6);
    return sub_1BF178DAC();
  }
}

unint64_t sub_1BF044868()
{
  result = qword_1EBDCAEE8;
  if (!qword_1EBDCAEE8)
  {
    sub_1BF1794AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAEE8);
  }

  return result;
}

uint64_t sub_1BF0448C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF0444B0, 0, 0);
}

uint64_t sub_1BF044920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 64);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  v6 = type metadata accessor for EagerCancellationState(0, v5, a3, a4);
  v15 = *(v4 + 48);
  v7 = sub_1BF03995C(v4 + 16, v6);
  *(v4 + 72) = v7;
  v8 = swift_task_alloc();
  *(v4 + 80) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v15;
  v9 = swift_task_alloc();
  *(v4 + 88) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v4 + 96) = v10;
  *v10 = v11;
  v10[1] = sub_1BF045FE0;
  v12 = *(v4 + 64);
  v13 = *(v4 + 40);

  return MEMORY[0x1EEE6DE18](v13, &unk_1BF182B40, v8, sub_1BF0D0320, v9, 0, 0, v12);
}

uint64_t sub_1BF044A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF044ABC()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_1BF045E50;
  v7 = *(v0 + 16);

  return sub_1BF044F38(v7, 0, 0, sub_1BF045144, v3);
}

uint64_t sub_1BF044BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1BF035DD4;

  return sub_1BF044C68(a1, v5, v7, v6, v4);
}

uint64_t sub_1BF044C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF044ABC, 0, 0);
}

void sub_1BF044C90()
{
  OUTLINED_FUNCTION_97_0();
  v17 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_29();
  type metadata accessor for DeferredPromise(0, *(v9 + 80), v10, v11);

  v12 = sub_1BF0057E8();
  v2(v12, v4);
  OUTLINED_FUNCTION_27();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_46();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v13;
  v14[4] = v12;
  v14[5] = v8;
  v14[6] = v6;
  v15 = v17(v12, v4);

  OUTLINED_FUNCTION_67_0();
  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v15(v16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v12 + 16))
  {

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF044E1C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0 + 2;
  v2 = v0[11];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1BF045D2C;
  v4 = swift_continuation_init();
  sub_1BEFF79E8();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v1);
}

void Promise.recover<A>(on:disposeOn:closure:)()
{
  sub_1BF044C90();
}

{
  sub_1BF044C90();
}

uint64_t sub_1BF044F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1BF17A6AC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1BF044E1C, v6, v8);
}

void sub_1BF044FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = a5;
  v12[3] = a1;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a2;
  v7 = type metadata accessor for EagerCancellationState(0, a5, a3, a4);
  v8 = sub_1BEFF79E8();
  sub_1BF17A80C();
  v9 = sub_1BF17AE6C();
  sub_1BF0451C0(sub_1BF045364, v12, a2, v7, v9);
  v10 = v13;
  if (v13)
  {
    sub_1BF17A6EC();
    sub_1BF0D03D0();
    v11 = swift_allocError();
    sub_1BF179D0C();
    v13 = v11;
    sub_1BF0D01E4(&v13, v10, a5, v8, MEMORY[0x1E69E7288]);
  }
}

void (*sub_1BF0450D4(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t (*sub_1BF045150(uint64_t a1, uint64_t a2))(uint64_t)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF05E03C;
}

void sub_1BF0451D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 8) = a2;
    v18 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a6;
    v19[5] = a3;
    v19[6] = a4;
    v19[7] = a5;

    sub_1BF089AC0();
    v21 = v20;

    a2 = 0;
    *a1 = v21;
  }

  *a7 = a2;
}

uint64_t sub_1BF04531C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF045388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1BF035DD4;

  return sub_1BF045458(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1BF045458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[5] = *(a7 - 8);
  v7[6] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[7] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v7[8] = v10;
  *v10 = v7;
  v10[1] = sub_1BF046338;

  return v12(v9);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BF0455CC()
{
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_20();
  (*(v2 + 16))(v1);
  v3 = OUTLINED_FUNCTION_10_23();
  type metadata accessor for WhenEither2(v3, v4, v0, v5);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF045674(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v5);
  v37 = &v35 - v6;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WhenEither2(0, a2, a3, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v19;
LABEL_6:
    (*(v12 + 8))(v15, v11);
    v32 = 0x80000001BF18F080;
    sub_1BF10E70C();
    swift_allocError();
    *v33 = 0xD00000000000001FLL;
    v33[1] = 0x80000001BF18F080;
    swift_willThrow();
    return v32;
  }

  (*(v20 + 32))(v24, v19, a2);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v20 + 8))(v24, a2);
    goto LABEL_6;
  }

  v25 = v38;
  v26 = v35;
  (*(v38 + 32))(v35, v15, a3);
  v27 = TupleTypeMetadata2;
  type metadata accessor for Promise(0, TupleTypeMetadata2, v28, v29);
  v30 = *(v27 + 48);
  v31 = v37;
  (*(v20 + 16))(v37, v24, a2);
  (*(v25 + 16))(&v31[v30], v26, a3);
  v32 = Promise.__allocating_init(value:)();
  (*(v25 + 8))(v26, a3);
  (*(v20 + 8))(v24, a2);
  return v32;
}

void Array<A>.average.getter()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  OUTLINED_FUNCTION_2_3();
  v14 = v2;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_4_1();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {
    swift_getAssociatedConformanceWitness();
    sub_1BF17BA5C();
    OUTLINED_FUNCTION_13_27();
    sub_1BF17B83C();
  }

  else
  {
    Array<A>.total.getter();
    sub_1BF17A5AC();
    OUTLINED_FUNCTION_13_27();
    sub_1BF179F0C();
    sub_1BF179EEC();
    v12 = *(v14 + 8);
    v12(v7, v1);
    v13 = OUTLINED_FUNCTION_10_35();
    (v12)(v13);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF045CC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  *a2 = *v2;
  a2[1] = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = UniqueCollection.startIndex.getter(a1);

  a2[2] = v6;
  return result;
}

uint64_t sub_1BF045D2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1BF045E28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UniqueCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF045E50()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF0D00D4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v7();
  }
}

uint64_t (*sub_1BF045F74())()
{
  OUTLINED_FUNCTION_22_8();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_1BF0460F0();
  return sub_1BF0462C0;
}

uint64_t sub_1BF045FE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = sub_1BF0D0064;
  }

  else
  {

    v7 = sub_1BF0461E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t (*sub_1BF0460F0())()
{
  OUTLINED_FUNCTION_22_8();
  *v4 = *(v3 + 16);
  OUTLINED_FUNCTION_2_3();
  *(v5 + 8) = v6;
  *(v2 + 16) = __swift_coroFrameAllocStub(*(v7 + 64));
  UniqueCollection.subscript.getter(v1, v0, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20);
  return sub_1BF04619C;
}

void sub_1BF04619C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1BF0461E8()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

BOOL sub_1BF046244()
{
  v1 = *v0;
  v2 = 0x8000000000000010;
  if (v1 != 0x8000000000000010)
  {
    sub_1BF01716C(v1);
    sub_1BF01716C(v1);
    v2 = v1;
  }

  sub_1BF017214(v2);
  sub_1BF017214(0x8000000000000010);
  sub_1BF017214(v2);
  return v1 == 0x8000000000000010;
}

void sub_1BF0462C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Int sub_1BF04630C(Swift::Int *a1)
{
  result = UniqueCollection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1BF046338()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1BF0D0130;
  }

  else
  {
    v7 = sub_1BF046438;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF046438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_1_34(a1, a2, a3, a4);
  v6 = v4[7];
  if (v5)
  {
    v7 = v5;
    v9 = v4[5];
    v8 = v4[6];
    v10 = v4[4];
    (*(v9 + 16))(v8, v4[7], v10);
    sub_1BEFF79E8();
    sub_1BF046830(v8, v7, v10);
  }

  else
  {
    v10 = v4[4];
    v9 = v4[5];
  }

  (*(v9 + 8))(v6, v10);

  OUTLINED_FUNCTION_9();

  return v11();
}

uint64_t sub_1BF046528(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 40);
  sub_1BF018248(a1, a2, &v17);
  if (!v3)
  {
    v8 = v17;
    v9 = v17 >> 61;
    if (v17 >> 61 != 4)
    {
      goto LABEL_20;
    }

    if (v17 == 0x8000000000000000)
    {
      v7 = 1;
      return v7 & 1;
    }

    if (v17 == 0x8000000000000008)
    {
      v7 = 0;
    }

    else
    {
LABEL_20:
      sub_1BF05350C();
      swift_allocError();
      v11 = v10;
      *v10 = v6;
      v12 = *(a2 + 16);
      v10[4] = v12;
      v10[5] = *(a2 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10 + 1);
      (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a1, v12);
      v11[6] = 0x6E61656C6F6F62;
      v11[7] = 0xE700000000000000;
      v14 = 0xE600000000000000;
      v15 = 0x7463656A626FLL;
      switch(v9)
      {
        case 1:
          v14 = 0xE500000000000000;
          v15 = 0x7961727261;
          break;
        case 2:
          v15 = 0x676E69727473;
          break;
        case 3:
          v15 = 0x7265626D756ELL;
          break;
        case 4:
          if (v8 == 0x8000000000000000)
          {
            v14 = 0xE400000000000000;
            v15 = 1702195828;
          }

          else if (v8 == 0x8000000000000008)
          {
            v14 = 0xE500000000000000;
            v15 = 0x65736C6166;
          }

          else
          {
            v14 = 0xE400000000000000;
            v15 = 1819047278;
          }

          break;
        default:
          break;
      }

      v11[8] = v15;
      v11[9] = v14;
      *(v11 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v8);
    }
  }

  return v7 & 1;
}

uint64_t sub_1BF046750(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9[2] = a2;
  v6 = type metadata accessor for EagerCancellationState(0, a2, a3, a4);
  sub_1BEFF79E8();
  sub_1BF17A80C();
  v7 = sub_1BF17AE6C();
  sub_1BF0451C0(a3, v9, a1, v6, v7);
  return v9[5];
}

uint64_t sub_1BF046804@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1BF046830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_1BF0468C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t VersionNumber.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v3 = v1 + 32;
    sub_1BF0475B0();
    do
    {
      v3 += 8;
      v4 = sub_1BF17AFFC();
      v6 = v5;
      v7 = *(v11 + 16);
      if (v7 >= *(v11 + 24) >> 1)
      {
        sub_1BF00DD60();
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v6;
      --v2;
    }

    while (v2);
  }

  sub_1BF02027C();
  sub_1BF01B738();
  v9 = sub_1BF179F7C();

  return v9;
}

uint64_t Sequence<>.throwingUnorderedConcurrentMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t Version.description.getter()
{
  v1 = v0[2];
  if (!v1)
  {
    return VersionNumber.description.getter();
  }

  v2 = v0[1];
  v3 = v0[3];
  v6 = VersionNumber.description.getter();
  MEMORY[0x1BFB52000](45, 0xE100000000000000);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v3)
  {
    MEMORY[0x1BFB52000](45, 0xE100000000000000);
    v4 = VersionNumber.description.getter();
    MEMORY[0x1BFB52000](v4);
  }

  MEMORY[0x1BFB52000](v2, v1);

  return v6;
}

uint64_t ObservableProperty.observe(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29();
  v6 = v5;
  v7 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_42();
  sub_1BEFF6E88();
  *v2 = sub_1BF17AD5C();
  (*(v9 + 104))(v2, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1BF179C8C();
  result = (*(v9 + 8))(v2, v7);
  if (v12)
  {
    v14 = swift_allocObject();
    v14[2] = *(v6 + 80);
    v14[3] = a1;
    v14[4] = a2;
    OUTLINED_FUNCTION_9_29(v14);
    OUTLINED_FUNCTION_3_44();
    FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
    OUTLINED_FUNCTION_21_15(FunctionTypeMetadata1);

    OUTLINED_FUNCTION_20_17(v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF046CEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF046D24()
{
  OUTLINED_FUNCTION_10_9(v0 + 24, v18);
  v1 = OUTLINED_FUNCTION_3_42();
  v5 = sub_1BEFEEDE8(v1, v2, v3, v4);
  if (!v5)
  {
    swift_endAccess();
    OUTLINED_FUNCTION_10_9(v0 + 32, v18);
    v11 = OUTLINED_FUNCTION_3_42();
    if (!sub_1BEFEEDE8(v11, v12, v13, v14))
    {
      swift_endAccess();
      return 0;
    }

    v15 = swift_endAccess();
    OUTLINED_FUNCTION_2_57(v15, &qword_1ED8EDCF0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v10 = *(v16 + 16);
      swift_unknownObjectRetain();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_6_37(0, &qword_1EBDCBDF0);
    if (swift_dynamicCastClass())
    {
      v10 = sub_1BF1469C0();
LABEL_13:

      if (v10)
      {
        return v10;
      }

      return 0;
    }

LABEL_15:

    return 0;
  }

  v6 = v5;
  v7 = swift_endAccess();
  v8 = (*(*v6 + 80))(v7);
  if (!v8)
  {
    if ((*(*v6 + 88))())
    {
      v10 = sub_1BF1469C0();

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v9 = v8;

  v10 = *(v9 + 16);
  swift_unknownObjectRetain();
LABEL_7:

  return v10;
}

uint64_t sub_1BF046ED4()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_22_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 80) = v2;
  *v2 = v3;
  v2[1] = sub_1BF053064;
  v4 = OUTLINED_FUNCTION_24_9();

  return MEMORY[0x1EEE6DD58](v4);
}

void sub_1BF046F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF047630();
    v7 = a3(a1, &type metadata for ReferenceEncodingPool.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF047000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4(v10);
  *v11 = v12;
  v11[1] = sub_1BF035DD4;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_35_4();

  return sub_1BF047284(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t ReferenceEncodingPool.__allocating_init(from:)(void *a1)
{
  sub_1BF046F9C(0, &qword_1ED8E9B88, MEMORY[0x1E69E6F48]);
  v4 = v3;
  OUTLINED_FUNCTION_1();
  v14[0] = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v14 - v8;
  OUTLINED_FUNCTION_0_1();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC8];
  *(v10 + 24) = MEMORY[0x1E69E7CC0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF047630();
  sub_1BF17BBDC();
  if (v1)
  {
  }

  else
  {
    v11 = v14[0];
    sub_1BF047F9C(0);
    sub_1BF0481B8();
    sub_1BF17B5FC();
    (*(v11 + 8))(v9, v4);
    v12 = v14[5];
    swift_beginAccess();
    *(v10 + 16) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1BF047284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v8[12] = *(a7 - 8);
  v8[13] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[15] = v11;
  v8[16] = *(v11 + 64);
  v8[17] = swift_task_alloc();
  sub_1BF00974C(0);
  v8[18] = swift_task_alloc();
  sub_1BF17AE6C();
  v8[19] = swift_task_alloc();
  v8[20] = sub_1BEFF79E8();
  v12 = sub_1BF17A85C();
  v8[21] = v12;
  v8[22] = *(v12 - 8);
  v8[23] = swift_task_alloc();
  sub_1BF17AE6C();
  v8[24] = swift_task_alloc();
  v8[25] = *(a6 - 8);
  v8[26] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0476B8, 0, 0);
}

unint64_t sub_1BF0475B0()
{
  result = qword_1ED8EDD98;
  if (!qword_1ED8EDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDD98);
  }

  return result;
}

uint64_t sub_1BF047604@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ReferenceEncodingPool.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1BF047630()
{
  result = qword_1ED8EA050;
  if (!qword_1ED8EA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA050);
  }

  return result;
}

uint64_t DisposableBag.object.getter()
{
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BF0476B8()
{
  v1 = *(v0 + 120);
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 48), *(v0 + 72));
  sub_1BF17A32C();
  while (1)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 112);
    swift_getAssociatedConformanceWitness();
    sub_1BF17AF0C();
    OUTLINED_FUNCTION_51_2(v2, 1, v3);
    if (v4)
    {
      break;
    }

    v5 = *(v0 + 192);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 112);
    v9 = *(v0 + 64);
    v20 = *(v0 + 72);
    v19 = *(v0 + 56);
    v10 = sub_1BF17A77C();
    v21 = *(v0 + 80);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    v11 = *(v1 + 32);
    v11(v7, v5, v8);
    v12 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v20;
    *(v13 + 40) = v21;
    *(v13 + 56) = v19;
    *(v13 + 64) = v9;
    v11(v13 + v12, v7, v8);
    v14 = sub_1BF17A87C();

    sub_1BF047B94(v6, &unk_1BF182900, v13, v14);
    sub_1BF00CAB0(v6);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  OUTLINED_FUNCTION_54();
  *(v0 + 16) = sub_1BF17A56C();
  OUTLINED_FUNCTION_40();
  swift_checkMetadataState();
  sub_1BF17A82C();
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 240) = v15;
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_9_19(v15);

  return MEMORY[0x1EEE6DAD8](v17);
}

uint64_t DisposableBag.add(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectRetain();
    MEMORY[0x1BFB52290](v2);
    sub_1BF005F5C(*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
  }
}

uint64_t DisposableBag.__deallocating_deinit()
{
  sub_1BF042FB8(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BF047ADC()
{
  result = qword_1ED8EA040;
  if (!qword_1ED8EA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA040);
  }

  return result;
}

uint64_t sub_1BF047B30(uint64_t a1, uint64_t a2)
{
  sub_1BF00974C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF047B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF00974C(0);
  v7 = OUTLINED_FUNCTION_68(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_1BF047B30(a1, v10 - v9);
  v12 = sub_1BF17A77C();
  v13 = OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_51_2(v13, v14, v12);
  if (v15)
  {
    sub_1BF00CAB0(v11);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1BF17A6AC();
    swift_unknownObjectRelease();
  }

  swift_task_create();
}

uint64_t sub_1BF047D3C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_39_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68(AssociatedTypeWitness);
  OUTLINED_FUNCTION_55_3();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_16_8(v2);
  OUTLINED_FUNCTION_23_1();

  return sub_1BF047E90(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1BF047E24()
{
  result = qword_1ED8EA048;
  if (!qword_1ED8EA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA048);
  }

  return result;
}

uint64_t sub_1BF047E90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1BF035DD4;

  return v11(a1, a6);
}

void sub_1BF047F9C(uint64_t a1)
{
  if (!qword_1ED8E9C98)
  {
    sub_1BF04801C();
    sub_1BF0264F8();
    v1 = sub_1BF179E9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9C98);
    }
  }
}

void Version.qualifier.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_1BF026144(v2, v3, v4);
}

void sub_1BF04801C()
{
  if (!qword_1ED8E9C28)
  {
    v0 = sub_1BF17A9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9C28);
    }
  }
}

uint64_t sub_1BF048074(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF0480B4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_1BF0CE1C8;
  }

  else
  {
    v7 = sub_1BF04825C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t sub_1BF0481B8()
{
  result = qword_1ED8E9C88;
  if (!qword_1ED8E9C88)
  {
    sub_1BF047F9C(255);
    sub_1BF0483C4();
    sub_1BF048418(&qword_1ED8E9C10, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9C88);
  }

  return result;
}

uint64_t sub_1BF04825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_26_1();
  v13 = v12[10];
  v14 = OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_51_2(v14, v15, v13);
  if (v16)
  {
    v17 = v12[4];
    (*(v12[22] + 8))(v12[23], v12[21]);
    *v17 = v12[2];

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_23_1();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_46_3();
    v28(v27);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5DC();
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v12[30] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_9_19(v29);
    OUTLINED_FUNCTION_23_1();

    return MEMORY[0x1EEE6DAD8](v31);
  }
}

unint64_t sub_1BF0483C4()
{
  result = qword_1ED8EAB98;
  if (!qword_1ED8EAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAB98);
  }

  return result;
}

uint64_t sub_1BF048418(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BF04801C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Promise.resolveAsync()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_8(sub_1BF0430C4);
}

uint64_t sub_1BF048508(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF048544(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t ReferenceType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_11();
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_2_11();
    v5 = sub_1BF17B89C();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t objectdestroy_24Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

void *ReferenceEncodingPool.types.getter()
{
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF048EC8(*(v1 + 16), 0);
  v4 = sub_1BF049018(&v7, v3 + 4, v2, v1);
  v5 = v7;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF003FE8(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t ReferenceService.createDecodingPool(from:)()
{
  v2 = v1;
  v3 = ReferenceEncodingPool.types.getter();
  v4 = 0;
  v5 = v3[2];
  v6 = MEMORY[0x1E69E7CC0];
  v7 = v3 + 5;
  while (v5 != v4)
  {
    if (v4 >= v3[2])
    {
      __break(1u);
      goto LABEL_39;
    }

    v8 = *(v7 - 1);
    v0 = *v7;
    swift_beginAccess();
    v9 = *(v2 + 16);
    if (*(v9 + 16))
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v10 = sub_1BEFF4AB0(v8);
      if (v11)
      {
        sub_1BEFE6A78(*(v9 + 56) + 40 * v10, &v38);
      }

      else
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
      }
    }

    else
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    swift_endAccess();

    if (*(&v39 + 1))
    {
      sub_1BEFE87B0(&v38, &v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0491A8();
        v6 = v13;
      }

      v12 = *(v6 + 16);
      v0 = v12 + 1;
      if (v12 >= *(v6 + 24) >> 1)
      {
        sub_1BF0491A8();
        v6 = v14;
      }

      *(v6 + 16) = v0;
      sub_1BEFE87B0(&v41, v6 + 40 * v12 + 32);
    }

    else
    {
      sub_1BF0ABBDC(&v38, &unk_1EBDCAED0, sub_1BF0AB7F0, MEMORY[0x1E69E6720], sub_1BF0ABA08);
    }

    v7 += 2;
    ++v4;
  }

  v15 = *(v6 + 16);
  v16 = ReferenceEncodingPool.types.getter()[2];

  if (v15 == v16)
  {
    if (v15)
    {
      v44 = MEMORY[0x1E69E7CC0];
      sub_1BF17B35C();
      v17 = v6 + 32;
      while (1)
      {
        sub_1BEFE6A78(v17, &v41);
        v18 = v42;
        v19 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        OUTLINED_FUNCTION_9_10();
        v20(v18, v19);
        v37 = v38;
        v21 = ReferenceEncodingPool.subscript.getter(&v37);

        if (!v21)
        {
          goto LABEL_24;
        }

        if (!*(v21 + 16))
        {
          break;
        }

        v22 = v42;
        v23 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        (*(v23 + 16))(v21, v22, v23);

LABEL_25:
        __swift_destroy_boxed_opaque_existential_1(&v41);
        sub_1BF17B32C();
        sub_1BF17B36C();
        sub_1BF17B37C();
        sub_1BF17B33C();
        v17 += 40;
        if (!--v15)
        {

          v0 = v44;
          goto LABEL_34;
        }
      }

LABEL_24:
      sub_1BF0AB8A0(0, &qword_1ED8E9CE0, &qword_1ED8E9C58, &type metadata for AnyReference, type metadata accessor for Promise);
      swift_allocObject();
      sub_1BF0AAF30(MEMORY[0x1E69E7CC0], &qword_1EBDCA9F8, &qword_1ED8E9C58, &type metadata for AnyReference);
      goto LABEL_25;
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_34:
    if (qword_1ED8F0210 != -1)
    {
LABEL_39:
      swift_once();
    }

    sub_1BF049E28(off_1ED8F0218, v0);

    sub_1BF04EE80();
    v33 = v32;
  }

  else
  {
    v24 = ReferenceEncodingPool.types.getter();
    sub_1BF09E9CC(v24);
    if (v15)
    {
      *&v37 = MEMORY[0x1E69E7CC0];
      sub_1BF0706C0();
      v25 = v37;
      v26 = v6 + 32;
      do
      {
        sub_1BEFE6A78(v26, &v41);
        v27 = v42;
        v28 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        OUTLINED_FUNCTION_9_10();
        v29(v27, v28);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v30 = v38;
        *&v37 = v25;
        v31 = *(v25 + 16);
        if (v31 >= *(v25 + 24) >> 1)
        {
          sub_1BF0706C0();
          v25 = v37;
        }

        *(v25 + 16) = v31 + 1;
        *(v25 + 16 * v31 + 32) = v30;
        v26 += 40;
        --v15;
      }

      while (v15);
    }

    sub_1BF0A71D4();
    v33 = v34;

    sub_1BF0AB84C();
    swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = v33;
    *(v35 + 24) = 0;
    swift_willThrow();
  }

  return v33;
}

void *Promise.__allocating_init<A>(task:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v6);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1BF049174();
  sub_1BF17A77C();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_46();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = v9;

  sub_1BF089AC0();

  return v9;
}

uint64_t sub_1BF048E88()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void *sub_1BF048EC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BF048F48(0, &qword_1ED8E9B40, &type metadata for ReferenceType);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void sub_1BF048F48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BF17B70C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1BF048F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Seal(0, *(*v4 + 80), a3, a4);
  v7 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v5 = UnfairLock.init(options:)(&v7);
  v4[2] = sub_1BF004E88(v5);
  return v4;
}

void *sub_1BF049018(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BF0491C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF049228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ReferenceEncodingPool.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_1BEFF4AB0(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t sub_1BF049310(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4(v8);
  *v9 = v10;
  v9[1] = sub_1BF035DD0;

  return sub_1BF0493D0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_1BF0493D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v6[3] = a6;
  v8 = *a6;
  v9 = sub_1BF17A6EC();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  v10 = *(v8 + 80);
  v6[7] = v10;
  v6[8] = *(v10 - 8);
  v11 = swift_task_alloc();
  v6[9] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v6[10] = v12;
  *v12 = v6;
  v12[1] = sub_1BF054A58;

  return v14(v11);
}

BOOL sub_1BF0495E0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

void *StateMachine.init(state:log:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_37();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_7_37();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v19 - v11;
  v14 = *(v13 + 88);
  v15 = *(v13 + 96);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19[0] = v6;
  v19[1] = v14;
  v19[2] = AssociatedConformanceWitness;
  v19[3] = v15;
  type metadata accessor for StateMachineTransition(255, v19);
  sub_1BF17A65C();
  v2[3] = sub_1BF179CEC();
  v17 = *(v8 + 16);
  OUTLINED_FUNCTION_1_26();
  v17();
  OUTLINED_FUNCTION_7_2((v2 + 2), v19);
  v2[2] = sub_1BEFFCE64(v12, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_1_26();
  v17();
  OUTLINED_FUNCTION_7_2((v2 + 5), v19);
  v2[5] = sub_1BEFFCE64(v12, v6);
  swift_endAccess();
  (*(v8 + 8))(a1, v6);
  v2[4] = a2;
  return v2;
}

void __swiftcall Version.init(_:)(TeaFoundation::Version *__return_ptr retstr, Swift::OpaquePointer a2)
{
  retstr->base.numbers = a2;
  retstr->qualifier.value.name._countAndFlagsBits = 0;
  retstr->qualifier.value.name._object = 0;
  retstr->qualifier.value.version.value.numbers._rawValue = 0;
}

uint64_t StartupTaskManager.promise(for:phase:)(uint64_t *a1, char *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  LOBYTE(v16[0]) = *a2;
  sub_1BEFFEBA4(v16);
  v7 = OUTLINED_FUNCTION_73_1();
  sub_1BF003FF0(v7, v8, v2);
  OUTLINED_FUNCTION_95();

  if (v3)
  {
    OUTLINED_FUNCTION_3_5(v3 + 16, v16);
    v9 = *(v3 + 16);
    if (v9)
    {
LABEL_5:

      return v9;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_0_14();
  v10 = OUTLINED_FUNCTION_131();
  sub_1BEFEC638(v10, v11, v12, v13);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  v14 = sub_1BEFFEC08();
  v16[0] = v4;
  v16[1] = v5;
  v17 = v6;
  sub_1BF00377C(v14, v16, &v17);
  result = OUTLINED_FUNCTION_3_5(v14 + 16, v16);
  v9 = *(v14 + 16);
  if (v9)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Reference.init(value:type:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*a3 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  v14 = type metadata accessor for Reference(0, v8, v12, v13);
  v15 = (a4 + *(v14 + 32));
  *v15 = v6;
  v15[1] = v7;
  swift_getAtKeyPath();

  result = (*(v10 + 8))(a1, v8);
  v17 = a4 + *(v14 + 28);
  *v17 = v18;
  *(v17 + 8) = v19;
  *(v17 + 16) = 0;
  return result;
}

__n128 AnyReference.init<A>(reference:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v8 = type metadata accessor for Reference(0, a2, a3, a4);
  v9 = (a1 + *(v8 + 32));
  v11 = *v9;
  v10 = v9[1];
  a5->n128_u64[0] = v11;
  a5->n128_u64[1] = v10;
  a5[4].n128_u64[0] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&a5[2].n128_i64[1]);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, a1, a2);
  v13 = (a1 + *(v8 + 28));
  v14 = v13[1].n128_u8[0];
  result = *v13;
  a5[1] = *v13;
  a5[2].n128_u8[0] = v14;
  return result;
}

uint64_t Reference.init(value:type:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for Reference(0, a5, v12, v13);
  v15 = (a6 + *(result + 32));
  *v15 = v10;
  v15[1] = v11;
  v16 = a6 + *(result + 28);
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 0;
  return result;
}

uint64_t sub_1BF049BEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF049C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t *StateMachineTransition.init(state:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v1 + 3) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 15) = 0u;
  v5 = *(v3 + 80);
  sub_1BF00CCEC(v5, v5);
  v6 = *(v5 - 8);
  swift_allocObject();
  v7 = sub_1BF17A50C();
  (*(v6 + 16))(v8, a1, v5);
  sub_1BF00CD7C(v7, v5);
  v10 = v9;
  if (sub_1BF17A5AC())
  {
    v11 = sub_1BF02C7D0(v10, v5, *(*(v4 + 96) + 8));
    (*(v6 + 8))(a1, v5);
  }

  else
  {
    (*(v6 + 8))(a1, v5);

    v11 = MEMORY[0x1E69E7CD0];
  }

  v1[2] = v11;
  return v1;
}

void sub_1BF04A08C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v4 = v3;
    v5 = v2;
    sub_1BEFFF95C(255, &qword_1ED8E9C30);
    v6 = OUTLINED_FUNCTION_75();
    v7 = v4(v6);
    if (!v8)
    {
      atomic_store(v7, v5);
    }
  }
}

uint64_t sub_1BF04A110(uint64_t a1)
{
  sub_1BF04A44C();
  sub_1BF04AB00();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v1 = sub_1BF17A38C();

  return v1;
}

uint64_t sub_1BF04A1B0()
{
  v1 = v0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v2 = (v0 + 16);
  *v5 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  UnfairLock.init(options:)(v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BF04A08C(0, &unk_1ED8E9CD8);
  swift_allocObject();
  swift_unownedRetain();
  v3 = sub_1BF04A33C();
  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  *v2 = v3;

  return v1;
}

void sub_1BF04A2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BEFFFCCC(255, &qword_1ED8E9C30, &qword_1ED8E9C58, &type metadata for AnyReference, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF04A33C()
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF04A2AC(0, &qword_1ED8E9DB8, type metadata accessor for Seal);
  OUTLINED_FUNCTION_50_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v1, MEMORY[0x1E69E7CC0]);
  sub_1BF04A2AC(0, &qword_1ED8EA288, type metadata accessor for PromiseWeakResolver);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t StateMachineTransition.didEnter(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  OUTLINED_FUNCTION_0_33(v5, v4);
}

void sub_1BF04A44C()
{
  if (!qword_1ED8ED788)
  {
    v0 = sub_1BF179DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED788);
    }
  }
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return type metadata accessor for UnfairLock();
}

void *StateMachine.add(transition:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_37();
  v64 = v4;
  v62 = *v5;
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_2_3();
  v53 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_1_16();
  v61 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = v51 - v14;
  v15 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v51 - v17;
  v19 = sub_1BF179C5C();
  OUTLINED_FUNCTION_2_3();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = (v25 - v24);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v26 = sub_1BF17AD5C();
  (*(v21 + 104))(v26, *MEMORY[0x1E69E8020], v19);
  v27 = sub_1BF179C8C();
  result = (*(v21 + 8))(v26, v19);
  if (v27)
  {
    v60 = a1;
    v29 = *(a1 + 16);
    if ((v29 & 0xC000000000000001) != 0)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF17B0FC();
      swift_getAssociatedConformanceWitness();
      result = sub_1BF17A97C();
      v29 = v67[7];
      v52 = v67[8];
      v30 = v67[9];
      v63 = v67[10];
      v31 = v67[11];
    }

    else
    {
      v32 = -1 << *(v29 + 32);
      v33 = *(v29 + 56);
      v52 = v29 + 56;
      v34 = ~v32;
      v35 = -v32;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v31 = v36 & v33;
      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v30 = v34;
      v63 = 0;
    }

    v51[1] = v30;
    v37 = (v30 + 64) >> 6;
    v65 = (v53 + 16);
    v55 = (v53 + 32);
    v54 = (v53 + 8);
    v57 = v29;
    v56 = v37;
    v58 = v18;
    v59 = v2;
    v38 = v61;
    if (v29 < 0)
    {
      goto LABEL_11;
    }

    while (v31)
    {
      v39 = v63;
LABEL_18:
      v41 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      (*(v53 + 16))(v18, *(v29 + 48) + *(v53 + 72) * (v41 | (v39 << 6)), v7);
      while (1)
      {
        __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
        (*v55)(v66, v18, v7);
        swift_beginAccess();
        v42 = *(v62 + 96);
        v43 = *(v64 + 88);
        v44 = *(v64 + 96);
        v67[0] = v7;
        v67[1] = v43;
        v67[2] = v42;
        v67[3] = v44;
        v45 = type metadata accessor for StateMachineTransition(255, v67);
        sub_1BF17A65C();
        sub_1BF179EAC();
        v46 = v67[0];
        swift_endAccess();
        if (!v46)
        {
          sub_1BF17A56C();
        }

        v47 = v66;
        (*v65)(v38, v66, v7);
        sub_1BF041640();
        swift_allocObject();
        v48 = sub_1BF17A50C();
        *v49 = v60;
        sub_1BF00CD7C(v48, v45);

        v50 = sub_1BF17A54C();

        v67[4] = v50;
        OUTLINED_FUNCTION_7_2(v59 + 24, v67);
        sub_1BF179E9C();
        sub_1BF179EBC();
        swift_endAccess();
        result = (*v54)(v47, v7);
        v18 = v58;
        v29 = v57;
        v37 = v56;
        if ((v57 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_11:
        if (!sub_1BF17B10C())
        {
          goto LABEL_23;
        }

        sub_1BF17B82C();
        swift_unknownObjectRelease();
      }
    }

    v40 = v63;
    while (1)
    {
      v39 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
LABEL_23:
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v7);
        return sub_1BF003FE8(v29);
      }

      v31 = *(v52 + 8 * v39);
      ++v40;
      if (v31)
      {
        v63 = v39;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF04AB00()
{
  result = qword_1ED8ED790;
  if (!qword_1ED8ED790)
  {
    sub_1BF04A44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED790);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_123_0()
{
}

void OUTLINED_FUNCTION_69_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_69_1(void *a1)
{
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v6;
  a1[6] = v2;
  a1[7] = v1;
}

uint64_t *combine<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = *(v12 + 80);
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v15 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v16, v17, v18, TupleTypeMetadata);
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF04AE14()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t ThreadsafeSet.init()()
{
  v2 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + 16) = UnfairLock.init(options:)(&v2);
  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_0_35();
  *(v0 + 24) = sub_1BF179D1C();
  return v0;
}

uint64_t sub_1BF04AEF8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFEC638(0, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v6 = sub_1BEFFFF04();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  swift_retain_n();

  v8 = sub_1BF04B410(a1, sub_1BF0A90F0, v6, sub_1BF02E2A4, v6, sub_1BF001C0C, v7);

  (v8)(v9);
  result = swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF04B0A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v43 = a2;
  v50 = a6;
  v10 = *a3;
  v12 = *a4;
  v39 = *a2;
  v40 = v12;
  v13 = *a6;
  v41 = *a5;
  v42 = v13;
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v19, v18, v16);
  v37 = (*(v14 + 80) + 96) & ~*(v14 + 80);
  v20 = swift_allocObject();
  v21 = v39;
  *(v20 + 2) = a7;
  v39 = *(v21 + 80);
  v22 = v10;
  *(v20 + 3) = v39;
  v23 = a3;
  v38 = *(v22 + 80);
  v24 = v40;
  *(v20 + 4) = v38;
  v25 = a4;
  v40 = *(v24 + 80);
  v26 = v41;
  *(v20 + 5) = v40;
  v27 = a5;
  v28 = *(v26 + 80);
  v29 = v42;
  *(v20 + 6) = v28;
  v30 = v50;
  v31 = *(v29 + 80);
  *(v20 + 7) = v31;
  *(v20 + 8) = v23;
  *(v20 + 9) = v25;
  *(v20 + 10) = v27;
  *(v20 + 11) = v30;
  (*(v14 + 32))(&v20[v37], v17, a7);

  v44 = a7;
  v45 = v39;
  v46 = v38;
  v47 = v40;
  v48 = v28;
  v49 = v31;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v33 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v33, sub_1BF04B664, v20, TupleTypeMetadata);
  v35 = v34;

  return v35;
}

uint64_t sub_1BF04B338()
{
  OUTLINED_FUNCTION_2_56();

  v0 = OUTLINED_FUNCTION_92();
  v1(v0);
  v2 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void (*sub_1BF04B410(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v30 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20(sub_1BF0A9010, v15, &unk_1ED8E9DF0, &qword_1ED8E9C58, &type metadata for AnyReference, sub_1BF005F5C, v17, v18, v27, a6, a4, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v20 = v19;
  v22 = v21;

  os_unfair_lock_unlock(*(v31 + 16));
  if (!v22)
  {
    v23 = sub_1BF04B6BC(v20, 0, v16, v28, a7);
LABEL_7:
    v25 = v23;
    goto LABEL_8;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return nullsub_1;
    }

    v23 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v24 = swift_allocObject();
  v24[2] = v29;
  v24[3] = a5;
  v24[4] = v20;

  sub_1BF0019A0(v20, 1);
  v25 = sub_1BF006210(v16, sub_1BF02E21C, v24);

LABEL_8:
  sub_1BF001964(v20, v22);
  return v25;
}

void (*sub_1BF04B6BC(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t SceneStateManager.insert(monitor:before:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v10 = sub_1BEFE90AC(v9);
  if (!v10)
  {
    return SceneStateManager.add(monitor:)(a2, a4);
  }

  v11 = v10;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a3)
      {

        v16 = _s13TeaFoundation17DisposableMonitorCMa_0();
        swift_allocObject();
        v17 = swift_unknownObjectRetain();
        v18 = sub_1BF009D14(v17, a2);
        swift_beginAccess();
        sub_1BF04C040(i, *(v5 + 16));

        sub_1BF04BA78(i, i, v18);
        result = swift_endAccess();
        a4[3] = v16;
        a4[4] = &off_1F3DC2820;
        *a4 = v18;
        return result;
      }
    }

    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 == v11)
    {

      return SceneStateManager.add(monitor:)(a2, a4);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BF04BAB8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a3;
  v60 = a5;
  v53 = a4;
  v46 = a1;
  v47 = a2;
  v10 = *a3;
  v48 = *a2;
  v49 = v10;
  v11 = *a5;
  v50 = *a4;
  v51 = v11;
  v12 = *(a8 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v20, v21, v22, v19);
  v23 = *(v12 + 16);
  v44 = a8;
  v23(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a8);
  v24 = (*(v15 + 80) + 88) & ~*(v15 + 80);
  v25 = (v16 + *(v12 + 80) + v24) & ~*(v12 + 80);
  v26 = swift_allocObject();
  v27 = v48;
  v28 = a7;
  *(v26 + 2) = a7;
  *(v26 + 3) = a8;
  v29 = *(v27 + 80);
  *(v26 + 4) = v29;
  v31 = v52;
  v30 = v53;
  v49 = *(v49 + 80);
  *(v26 + 5) = v49;
  v32 = *(v50 + 80);
  *(v26 + 6) = v32;
  v33 = v60;
  v34 = *(v51 + 80);
  *(v26 + 7) = v34;
  *(v26 + 8) = v31;
  *(v26 + 9) = v30;
  *(v26 + 10) = v33;
  v35 = v20;
  v36 = v28;
  (*(v15 + 32))(&v26[v24], v35);
  v37 = v44;
  (*(v12 + 32))(&v26[v25], v45, v44);

  v54 = v36;
  v55 = v37;
  v56 = v29;
  v57 = v49;
  v58 = v32;
  v59 = v34;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v39 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v39, sub_1BF04BEC0, v26, TupleTypeMetadata);
  v41 = v40;

  return v41;
}

uint64_t sub_1BF04BDC8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_21_12();

  v0 = OUTLINED_FUNCTION_86_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128_1();
  v3(v2);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF04BEC0()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  return sub_1BF04C0B0(v5, *(v0 + 64), *(v0 + 72), *(v0 + 80), v0 + (v4 & ~v3), v0 + (((v4 & ~v3) + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v6, v2, v7);
}

uint64_t sub_1BF04BF74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = *v6;
  result = sub_1BEFE90B4(*v6);
  if (result < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = a2 - v12;
  if (__OFSUB__(a2, v12))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = a4(v13);
  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    sub_1BEFFD468(result, 1);
    return sub_1BF04CDA4(v12, a2, 1, a3, a5, a6);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1BF04C0B0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a6;
  v50 = a1;
  v56 = a3;
  v57 = a4;
  v64 = a2;
  v10 = *a3;
  v51 = *a2;
  v52 = v10;
  v55 = *(a9 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v46 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22);
  v23 = *(v13 + 16);
  v24 = a8;
  v44 = a8;
  v23(&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v49, a8);
  v25 = v55;
  v26 = *(v55 + 16);
  v45 = a9;
  v26(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v50, a9);
  v27 = (*(v18 + 80) + 80) & ~*(v18 + 80);
  v28 = (v19 + *(v13 + 80) + v27) & ~*(v13 + 80);
  v29 = (v14 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v31 = v51;
  *(v30 + 2) = v54;
  *(v30 + 3) = v24;
  *(v30 + 4) = a9;
  v32 = *(v31 + 80);
  *(v30 + 5) = v32;
  v34 = v56;
  v33 = v57;
  v35 = *(v52 + 80);
  *(v30 + 6) = v35;
  v36 = *(v53 + 80);
  *(v30 + 7) = v36;
  *(v30 + 8) = v34;
  *(v30 + 9) = v33;
  (*(v18 + 32))(&v30[v27], v46);
  v37 = v44;
  (*(v13 + 32))(&v30[v28], v47, v44);
  v38 = v45;
  (*(v55 + 32))(&v30[v29], v48, v45);

  v58 = v54;
  v59 = v37;
  v60 = v38;
  v61 = v32;
  v62 = v35;
  v63 = v36;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v40 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v40, sub_1BF04C5E0, v30, TupleTypeMetadata);
  v42 = v41;

  return v42;
}

uint64_t sub_1BF04C470()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_34();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_51_4();

  v0 = OUTLINED_FUNCTION_106_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_153();
  v3(v2);
  v4 = OUTLINED_FUNCTION_152();
  v5(v4);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BF04C5E0()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_80_2();
  return sub_1BF04C740(v5, *(v0 + 64), *(v0 + 72), v0 + v3, v0 + v4, v0 + ((v4 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v6, v7, v2, v8);
}

uint64_t sub_1BF04C6E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1BF17B50C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF04C740(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v60 = a6;
  v61 = a1;
  v67 = a3;
  v74 = a2;
  v58 = a5;
  v59 = a10;
  v63 = *a2;
  v65 = *(a10 - 8);
  v62 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v66 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a9;
  v12 = *(a9 - 8);
  v57 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v16;
  v52 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v55 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v54 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v27);
  v50 = v18;
  (*(v18 + 16))(&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v58, a8);
  v51 = v12;
  (*(v12 + 16))(v16, v60, a9);
  v28 = v65;
  v29 = v59;
  (*(v65 + 16))(v66, v61, v59);
  v30 = (*(v23 + 80) + 72) & ~*(v23 + 80);
  v31 = (v24 + *(v18 + 80) + v30) & ~*(v18 + 80);
  v32 = (v57 + *(v28 + 80) + ((v19 + *(v12 + 80) + v31) & ~*(v12 + 80))) & ~*(v28 + 80);
  v60 = (v19 + *(v12 + 80) + v31) & ~*(v12 + 80);
  v61 = v32;
  v33 = swift_allocObject();
  v34 = v63;
  v35 = v53;
  v36 = v52;
  *(v33 + 2) = v53;
  *(v33 + 3) = v36;
  v37 = v49;
  *(v33 + 4) = v49;
  *(v33 + 5) = v29;
  v38 = *(v34 + 80);
  *(v33 + 6) = v38;
  v39 = v67;
  v40 = *(v64 + 80);
  *(v33 + 7) = v40;
  *(v33 + 8) = v39;
  v41 = &v33[v30];
  v42 = v35;
  (*(v23 + 32))(v41, v54);
  (*(v50 + 32))(&v33[v31], v55, v36);
  (*(v51 + 32))(&v33[v60], v56, v37);
  (*(v65 + 32))(&v33[v61], v66, v29);

  v68 = v42;
  v69 = v36;
  v70 = v37;
  v71 = v29;
  v72 = v38;
  v73 = v40;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v44 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v44, sub_1BF04CF44, v33, TupleTypeMetadata);
  v46 = v45;

  return v46;
}

uint64_t sub_1BF04CBE4()
{
  OUTLINED_FUNCTION_97_0();
  v21 = *(v0 + 3);
  v22 = *(v0 + 2);
  v20 = *(v0 + 4);
  OUTLINED_FUNCTION_2_3();
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_34();
  v4 = v3;
  v6 = (v2 + v5 + *(v3 + 80)) & ~*(v3 + 80);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_11_22();
  v8 = v7;
  v10 = (v6 + v9 + *(v7 + 80)) & ~*(v7 + 80);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_165();

  v11 = OUTLINED_FUNCTION_129_0();
  v12(v11, v22);
  (*(v4 + 8))(&v0[v6], v21);
  (*(v8 + 8))(&v0[v10], v20);
  v13 = OUTLINED_FUNCTION_151();
  v14(v13);
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1BF04CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t *))
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = a6;
  v9 = a3;
  v11 = a2;
  v8 = a1;
  v19 = a4;
  v15 = *v7;
  v13 = *v7 & 0xFFFFFFFFFFFFFF8;
  v6 = v13 + 32;
  v12 = v13 + 32 + 8 * a1;
  a5(0);
  swift_arrayDestroy();
  v16 = __OFSUB__(v9, v14);
  v14 = v9 - v14;
  if (v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = (v12 + 8 * v9);
  if (!v14)
  {
    goto LABEL_12;
  }

  v12 = v15 >> 62;
  if (!(v15 >> 62))
  {
    result = *(v13 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1BF17B50C();
LABEL_6:
  if (__OFSUB__(result, v11))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v10(v6 + 8 * v11, result - v11, v7);
  if (v12)
  {
    result = sub_1BF17B50C();
  }

  else
  {
    result = *(v13 + 16);
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_23;
  }

  *(v13 + 16) = result + v14;
LABEL_12:
  if (v9 < 1)
  {
  }

  else
  {
    v18 = v13 + 8 * v8;
    result = v19;
    *(v18 + 32) = v19;
    if (v18 + 40 < v7)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF04CF44()
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_27_9();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF04D0BC(v8, *(v0 + 64), v0 + v7, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v9, v10, v11, v6, v12);
}

uint64_t sub_1BF04D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a5;
  v63 = a6;
  v60 = a4;
  v80 = a2;
  v64 = a1;
  v71 = a11;
  v70 = *(a11 - 8);
  v65 = *(v70 + 64);
  v68 = a10;
  v69 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v73 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v13 - 8);
  v61 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v72 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v59 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v58 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v57 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v32);
  v53 = v23;
  (*(v23 + 16))(&v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v60, a8);
  v54 = v18;
  (*(v18 + 16))(&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v69);
  v33 = v67;
  (*(v67 + 16))(v72, v63, v68);
  v34 = v70;
  (*(v70 + 16))(v73, v64, v71);
  v35 = (*(v28 + 80) + 64) & ~*(v28 + 80);
  v62 = (v29 + *(v23 + 80) + v35) & ~*(v23 + 80);
  v36 = (v24 + *(v18 + 80) + v62) & ~*(v18 + 80);
  v37 = (v19 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v63 = (v61 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v64 = v37;
  v38 = swift_allocObject();
  v39 = v56;
  v40 = v55;
  *(v38 + 2) = v56;
  *(v38 + 3) = v40;
  v41 = v68;
  v42 = v69;
  *(v38 + 4) = v69;
  *(v38 + 5) = v41;
  v43 = v71;
  *(v38 + 6) = v71;
  v44 = *(v66 + 80);
  *(v38 + 7) = v44;
  v45 = &v38[v35];
  v46 = v39;
  (*(v28 + 32))(v45, v57);
  (*(v53 + 32))(&v38[v62], v58, v40);
  (*(v54 + 32))(&v38[v36], v59, v42);
  (*(v67 + 32))(&v38[v64], v72, v41);
  (*(v70 + 32))(&v38[v63], v73, v43);
  v74 = v46;
  v75 = v40;
  v76 = v42;
  v77 = v41;
  v78 = v43;
  v79 = v44;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v48 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v48, sub_1BF04D858, v38, TupleTypeMetadata);
  v50 = v49;

  return v50;
}

uint64_t sub_1BF04D620()
{
  OUTLINED_FUNCTION_97_0();
  v24 = *(v0 + 4);
  v25 = *(v0 + 3);
  v23 = *(v0 + 5);
  OUTLINED_FUNCTION_77_2();
  v3 = (((*(v1 + 80) + 64) & ~*(v1 + 80)) + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_34_5();
  v5 = v4;
  v7 = (v3 + v6 + *(v4 + 80)) & ~*(v4 + 80);
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_34_5();
  v9 = v8;
  v11 = (v7 + v10 + *(v8 + 80)) & ~*(v8 + 80);
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_80_2();
  v13(&v0[v12]);
  v14 = OUTLINED_FUNCTION_129_0();
  v15(v14, v25);
  (*(v5 + 8))(&v0[v7], v24);
  (*(v9 + 8))(&v0[v11], v23);
  v16 = OUTLINED_FUNCTION_151();
  v17(v16);
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v18, v19, v20);
}

uint64_t sub_1BF04D858()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_146_0();
  OUTLINED_FUNCTION_146_0();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF04DA94(v9, v0 + v7, v0 + v8, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v10, v11, v12, v13, v14, v6, v15);
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:name:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 56))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 64))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t ProxyResolver.resolve<A>(_:name:with:)()
{
  OUTLINED_FUNCTION_4_28();
  v1 = v0;
  v6 = toKey<A>(type:name:)(v2, v3, v4, v5, &v19);
  v7 = v20;
  OUTLINED_FUNCTION_3_36(v6, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v17, v18, v19);
  v17 = v7;
  OUTLINED_FUNCTION_1_52(v16, v1);
}

{
  OUTLINED_FUNCTION_4_28();
  v0 = toKey<A>(type:name:)();
  OUTLINED_FUNCTION_3_36(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v10, v11, v12);
  v10 = v13;
  OUTLINED_FUNCTION_1_52(v9, &v14);

  return v14;
}

uint64_t sub_1BF04DA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = TupleTypeMetadata[12];
  v18 = TupleTypeMetadata[16];
  v21 = TupleTypeMetadata[20];
  v23 = TupleTypeMetadata[24];
  v25 = TupleTypeMetadata[28];
  (*(*(a7 - 8) + 16))(a9, a2, a7);
  (*(*(a8 - 8) + 16))(a9 + v17, a3, a8);
  (*(*(a10 - 8) + 16))(a9 + v18, a4, a10);
  (*(*(a11 - 8) + 16))(a9 + v21, a5, a11);
  (*(*(a12 - 8) + 16))(a9 + v23, a6, a12);
  return (*(*(a13 - 8) + 16))(a9 + v25, a1, a13);
}