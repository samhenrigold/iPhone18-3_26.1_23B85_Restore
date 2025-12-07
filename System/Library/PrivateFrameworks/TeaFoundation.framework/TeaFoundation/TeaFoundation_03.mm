uint64_t sub_1BF020F74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_1BF020FA8(uint64_t a1)
{
  result = sub_1BF1794FC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *PromiseDebouncer.init(interval:queue:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1BF1794EC();
  v7 = qword_1ED8EA980;
  sub_1BF1794FC();
  type metadata accessor for OnlyOnceDeferredPromise(0, *(v6 + 80), v8, v9);
  OUTLINED_FUNCTION_0_47();
  sub_1BEFE7288(v10, v11, MEMORY[0x1E69695B8]);
  *(v3 + v7) = sub_1BF179CEC();
  *(v3 + qword_1ED8EA998) = 0;
  v12 = qword_1ED8EA9A0;
  v14 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v3 + v12) = UnfairLock.init(options:)(&v14);
  *(v3 + qword_1ED8EA988) = a2;
  *(v3 + qword_1ED8EA990) = a1;
  return v3;
}

uint64_t PromiseDebouncer.debounce(_:)(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v3 = v2;
  v29 = *v2;
  v30 = a2;
  v5 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;

  UnfairLock.lock()();

  v16 = qword_1ED8EA9A8;
  swift_beginAccess();
  v17 = *(v7 + 16);
  v17(v15, &v2[v16], v5);
  sub_1BF0214AC(v15, a1, v30);
  v27 = *(v7 + 8);
  v27(v15, v5);
  v28 = v16;
  v18 = v11;
  v30 = v17;
  v17(v11, (v3 + v16), v5);
  swift_beginAccess();
  type metadata accessor for OnlyOnceDeferredPromise(0, *(v29 + 80), v19, v20);
  OUTLINED_FUNCTION_0_47();
  sub_1BEFE7288(v21, v22, MEMORY[0x1E69695B8]);
  sub_1BF179EAC();
  v23 = v31;
  swift_endAccess();
  v27(v18, v5);
  if (!v23)
  {
    v23 = OnlyOnceDeferredPromise.__allocating_init()();
  }

  v30(v15, (v3 + v28), v5);
  v31 = v23;
  swift_beginAccess();
  sub_1BF179E9C();

  sub_1BF179EBC();
  swift_endAccess();
  result = swift_beginAccess();
  v25 = *(v23 + 16);
  if (v25)
  {

    sub_1BF021498(v3);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0214AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v31 = *v3;
  v7 = sub_1BF179BEC();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v36 = &v30 - v12;
  v32 = sub_1BF179B5C();
  MEMORY[0x1EEE9AC00](v32, v13);
  v33 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF1794FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = qword_1ED8EA998;
  if (*(v3 + qword_1ED8EA998))
  {

    sub_1BF179C3C();
  }

  *(v3 + v19) = 0;

  v20 = swift_allocObject();
  swift_weakInit();
  (*(v16 + 16))(&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = *(v31 + 80);
  *(v22 + 3) = v20;
  *(v22 + 4) = a2;
  *(v22 + 5) = v34;
  (*(v16 + 32))(&v22[v21], &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  aBlock[4] = sub_1BF0D10A0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_7;
  _Block_copy(aBlock);
  v39 = MEMORY[0x1E69E7CC0];
  sub_1BEFE7288(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  sub_1BEFE7288(&qword_1ED8EFBD0, sub_1BF027D54, MEMORY[0x1E69E6328]);

  sub_1BF17B0BC();
  sub_1BF179C4C();
  swift_allocObject();
  v23 = sub_1BF179C2C();

  *(v4 + v19) = v23;

  v24 = v35;
  sub_1BF179BDC();
  v25 = v36;
  sub_1BF179C6C();
  v26 = *(v37 + 8);
  v27 = v24;
  v28 = v38;
  v26(v27, v38);
  sub_1BF17AD3C();

  return (v26)(v25, v28);
}

uint64_t sub_1BF02194C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF021984()
{
  v1 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t OnlyOnceDeferredPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  OnlyOnceDeferredPromise.init()();
  return v0;
}

uint64_t combine<A, B>(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v3 + 80);
  *(v4 + 24) = a2;

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v6, sub_1BF049808, v4, TupleTypeMetadata2);
  v8 = v7;

  return v8;
}

uint64_t sub_1BF021B60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF021B98(uint64_t *a1, void *a2, void (*a3)(uint64_t, void *))
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 72))(v5, v6);
  v9[3] = swift_getObjectType();
  v9[0] = v4;
  swift_unknownObjectRetain();
  a3(v7, v9);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1BF021C50(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_1BF17B84C();
  (*(a3 + 16))(a3, a1, v5);

  return swift_unknownObjectRelease();
}

void sub_1BF021CF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *DeviceStorageManager.init()()
{
  v1 = v0;
  sub_1BF021CF0(0, &qword_1ED8EAB90, &type metadata for DeviceStoragePurgeUrgency, type metadata accessor for AsyncObservable);
  swift_allocObject();
  v2 = sub_1BF021EB4(0);
  v3 = MEMORY[0x1E69E7CC0];
  v0[2] = v2;
  v0[3] = v3;
  v7 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v0[4] = UnfairLock.init(options:)(&v7);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = qword_1ED8EF148;

  if (v5 != -1)
  {
    swift_once();
  }

  TaskScheduler.scheduleLowPriority(_:)(sub_1BF021F24, v4);

  return v1;
}

uint64_t sub_1BF021E7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF021EB4(char a1)
{
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3 = UnfairLock.init(options:)(&v6);
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = a1;
  return v1;
}

uint64_t sub_1BF021F2C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() mainBundle];
    sub_1BF009264(v3);
    v4 = sub_1BF17A07C();

    v16 = sub_1BF0D2D14;
    v17 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1BF0D1E3C;
    v15 = &block_descriptor_8;
    v5 = _Block_copy(&aBlock);

    v16 = sub_1BF0D2D18;
    v17 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1BF0D1E3C;
    v15 = &block_descriptor_19;
    v6 = _Block_copy(&aBlock);

    v16 = nullsub_1;
    v17 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1BF0058CC;
    v15 = &block_descriptor_22;
    v7 = _Block_copy(&aBlock);

    v16 = OUTLINED_FUNCTION_0_4;
    v17 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1BF0D1E3C;
    v15 = &block_descriptor_25;
    v8 = _Block_copy(&aBlock);

    v9 = CacheDeleteRegisterInfoCallbacksForProcess();
    _Block_release(v8);
    _Block_release(v7);
    _Block_release(v6);
    _Block_release(v5);

    if (v9)
    {
      sub_1BF071C2C();
      v10 = sub_1BF17AE3C();
      v11 = sub_1BF17ACDC();
      sub_1BF1797CC("Failed to register for CacheDelete callbacks – possibly missing entitlements.", 79, 0, &dword_1BEFE0000, v10, v11, MEMORY[0x1E69E7CC0]);
    }
  }

  return result;
}

uint64_t sub_1BF022270(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SyncValue.init(_:)()
{
  OUTLINED_FUNCTION_0_81();
  v4 = *(v3 + 96);
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v4) = UnfairLock.init(options:)(&v6);
  (*(*(*(v2 + 80) - 8) + 32))(v0 + *(*v0 + 88), v1);
  return v0;
}

void *sub_1BF0223DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1BF0223FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_1_61(v2 + 48, a2);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  return sub_1BEFE52DC(v5, v6);
}

uint64_t Dictionary<>.disableSafeishSafety.setter(char a1)
{
  sub_1BF022610(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17B42C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_48();
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v14, v6, v7);
    v17 = MEMORY[0x1E69E6370];
    v16[0] = a1 & 1;
    return sub_1BF022668(v16, v14);
  }

  return result;
}

void sub_1BF022610(uint64_t a1)
{
  if (!qword_1ED8ECBB0)
  {
    sub_1BF17B42C();
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ECBB0);
    }
  }
}

uint64_t sub_1BF022668(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BEFF9A40(a1, v27);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_13();
    sub_1BF022938(v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v27[0], v27[1]);
    *v2 = v26;
    sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0();
    return (*(v12 + 8))(a2);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CA0];
    v15 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BF0ABB8C);
    sub_1BF058344(a2, v16, v17, v18, v19, v20, v21, v22, v24, v25);
    sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0();
    (*(v23 + 8))(a2);
    return sub_1BF0ABBDC(v27, &qword_1ED8EFBA0, v14 + 8, v15, sub_1BF0ABB8C);
  }
}

void sub_1BF0227A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v44 = v13;
  v15 = v14;
  v17 = v16;
  v45 = v18;
  v19 = sub_1BF17B42C();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  sub_1BF022978();
  OUTLINED_FUNCTION_1_5();
  if (v29)
  {
    __break(1u);
    goto LABEL_11;
  }

  v30 = v27;
  v31 = v28;
  v32 = v15(0);
  if ((OUTLINED_FUNCTION_14_4(v32) & 1) == 0)
  {
    goto LABEL_5;
  }

  v33 = sub_1BF022978();
  if ((v31 & 1) != (v34 & 1))
  {
LABEL_11:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  v30 = v33;
LABEL_5:
  v35 = *v12;
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v35 + 56) + 32 * v30));
    OUTLINED_FUNCTION_26_2();

    v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }

  else
  {
    (*(v21 + 16))(v26, v17, v19);
    v44(v30, v26, v45, v35);
    OUTLINED_FUNCTION_26_2();
  }
}

unint64_t sub_1BF022978()
{
  OUTLINED_FUNCTION_25_2();
  sub_1BF17B42C();
  v1 = sub_1BF179F1C();

  return sub_1BF0229D0(v0, v1);
}

unint64_t sub_1BF0229D0(uint64_t a1, uint64_t a2)
{
  v14[1] = a1;
  v4 = sub_1BF17B42C();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2;
  v16 = v2 + 64;
  v10 = ~(-1 << *(v2 + 32));
  for (i = a2 & v10; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v5 + 16))(v9, *(v15 + 48) + *(v5 + 72) * i, v4, v7);
    v12 = sub_1BF17A05C();
    (*(v5 + 8))(v9, v4);
    if (v12)
    {
      break;
    }
  }

  return i;
}

void sub_1BF022B54(uint64_t a1)
{
  if (!qword_1ED8EADA8)
  {
    sub_1BF17B42C();
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EADA8);
    }
  }
}

void sub_1BF022BC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  v11 = *(v10 + 48);
  sub_1BF17B42C();
  OUTLINED_FUNCTION_20();
  (*(v12 + 32))(v11 + *(v12 + 72) * a1, a2);
  a5(a3, *(a4 + 56) + 32 * a1);
  OUTLINED_FUNCTION_12_11();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

uint64_t StoreValue.init()()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  type metadata accessor for StoreComputedValue(0, v3, v3, v4);
  *(swift_allocObject() + 16) = v3;
  *(v1 + 16) = StoreComputedValue.__allocating_init(computation:)();
  return v1;
}

uint64_t sub_1BF022DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for StoreState(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF022E90(uint64_t a1)
{
  result = sub_1BEFF79E8();
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

uint64_t StoreComputedValue.__allocating_init(computation:)()
{
  OUTLINED_FUNCTION_76();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_5_25();
  StoreComputedValue.init(computation:)(v1, v2);
  return v0;
}

{
  OUTLINED_FUNCTION_76();
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 32) = v2;
  *(v3 + 40) = v0;

  return StoreComputedValue.__allocating_init(computation:)();
}

void *StoreComputedValue.init(computation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = *v2;
  sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  v36 = v6;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_1BF17AD1C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v13 = sub_1BF179BBC();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = type metadata accessor for StoreState(0, *(v4 + 88), v15, v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  type metadata accessor for AsyncObservable(0, v17, v22, v23);
  swift_storeEnumTagMultiPayload();
  v3[2] = AsyncObservable.__allocating_init(value:)(v21);
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for StoreState(0, *(v4 + 80), v24, v25);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_4_0();
  *(v3 + *(v26 + 120)) = 1;
  OUTLINED_FUNCTION_4_0();
  *(v3 + *(v27 + 128)) = 0;
  OUTLINED_FUNCTION_4_0();
  v29 = *(v28 + 136);
  v40 = v30;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v3 + v29) = UnfairLock.init(options:)(&v40);
  OUTLINED_FUNCTION_4_0();
  v32 = *(v31 + 144);
  sub_1BEFF6E88();
  sub_1BF179B8C();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1BF00AF84(&qword_1ED8F0BE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1BF00B014(0);
  sub_1BF00AF84(&qword_1ED8F0BE8, sub_1BF00B014, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  (*(v36 + 104))(v10, *MEMORY[0x1E69E8090], v37);
  *(v3 + v32) = sub_1BF17AD9C();
  v33 = v39;
  v3[3] = v38;
  v3[4] = v33;
  return v3;
}

uint64_t AsyncObservable.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AsyncObservable.init(value:)(a1);
  return v2;
}

uint64_t SyncObservable.map<A>(quietProvider:transform:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v34 = a2;
  OUTLINED_FUNCTION_29();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncObservable(0, v21, v19, v20);
  SyncObservable.uncheckedValue.getter();
  a3(v5);
  (*(v12 + 8))(v5, v10);
  v22 = SyncObservable.__allocating_init(value:)(v18);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v10;
  v24[3] = a5;
  v24[4] = v23;
  v24[5] = a3;
  v26 = v33;
  v25 = v34;
  v24[6] = a4;
  v24[7] = v26;
  v24[8] = v25;

  sub_1BF009984(v26, v25);
  SyncObservable.onNext(eager:block:)(0, sub_1BF0BD9DC, v24, v35);

  v27 = v36;
  v28 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v29 = *(v28 + 8);

  v29(v30, v27, v28);

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v22;
}

uint64_t sub_1BF023540()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF023578()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t SyncObservable.__allocating_init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_78();
  v2 = swift_allocObject();
  SyncObservable.init(value:)(a1);
  return v2;
}

uint64_t sub_1BF02363C(uint64_t a1)
{
  sub_1BF17A75C();
  sub_1BF17B15C();

  return swift_unknownObjectWeakAssign();
}

uint64_t SyncObservable<A>.map<A>(_:quietIfUnchanged:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = swift_allocObject();
  v13[2] = *(v12 + 80);
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v14 = SyncObservable.map<A>(quietProvider:transform:)(sub_1BF0BD9F0, v13, a1, a2, a4);

  return v14;
}

uint64_t sub_1BF023868()
{
  OUTLINED_FUNCTION_6_26();
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  swift_getMetatypeMetadata();
  v5 = objc_allocWithZone(TFKey);
  v13 = OUTLINED_FUNCTION_1_17(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  v16 = sub_1BEFE82CC(v13, v14, v15);
  v17 = [v16 address];

  v18 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v26 = OUTLINED_FUNCTION_1_17(v18, v19, v20, v21, v22, v23, v24, v25, v17);
  v29 = sub_1BEFF7D88(v26, v27, v28);
  OUTLINED_FUNCTION_8_21(v29, v30, v31, v32, v33, v34, v35, v36, v39, v2, v1);
  if (v4)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

_OWORD *sub_1BF023920@<X0>(void *(*a1)(__int128 *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  result = a1(&v4);
  if (v5)
  {
    return sub_1BEFF9A40(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF023A44()
{
  OUTLINED_FUNCTION_6_26();
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  sub_1BEFE8DAC();
  v5 = objc_allocWithZone(TFKey);
  v6 = v3;
  v14 = OUTLINED_FUNCTION_1_17(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  v17 = sub_1BEFE82CC(v14, v15, v16);
  v18 = [v17 address];

  v19 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v27 = OUTLINED_FUNCTION_1_17(v19, v20, v21, v22, v23, v24, v25, v26, v18);
  v30 = sub_1BEFF7D88(v27, v28, v29);
  OUTLINED_FUNCTION_8_21(v30, v31, v32, v33, v34, v35, v36, v37, v40, v2, v1);
  if (v4)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

BOOL SyncObservable<A>.next(value:quietIfUnchanged:)(uint64_t a1, char a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_3();
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  v14 = *(v3 + 16);
  v19 = v9;
  v20 = a3;
  v21 = a1;
  sub_1BEFFB4E8(sub_1BF023C74, v18, v14, v9, v9);
  v15 = sub_1BF17A05C();
  v16 = v15;
  if ((a2 & 1) == 0 || (v15 & 1) == 0)
  {
    sub_1BF02097C(v4, a1);
  }

  (*(v11 + 8))(v4, v9);
  return (v16 & 1) == 0;
}

void Promise.always<A>(on:disposeOn:closure:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_46();
  v9 = swift_allocObject();
  v9[2] = *(v7 + 80);
  v9[3] = v2;
  v9[4] = v8;
  v9[5] = v6;
  v9[6] = v4;

  sub_1BF00B6B0();
  OUTLINED_FUNCTION_55_1();

  v4(v10);

  OUTLINED_FUNCTION_26_2();
}

void sub_1BF023D98()
{
  OUTLINED_FUNCTION_32();
  v40[1] = v2;
  v41 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v42 = v11;
  v13 = v12;
  v44 = v14;
  v15 = *(*v6 + 80);
  OUTLINED_FUNCTION_0_62();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v40[0] = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_13();
  v26 = _s13TeaFoundation8ObserverCMa_0(0, v15, v24, v25);
  v27 = v13;

  v29 = sub_1BF024060(v28, v27, v5, v10, v8);
  v30 = *(v6 + 2);
  UnfairLock.lock()();
  v45 = v29;
  swift_beginAccess();
  v43 = v26;
  sub_1BF17A65C();

  sub_1BF17A5DC();
  swift_endAccess();
  v31 = *(*v6 + 104);
  swift_beginAccess();
  v32 = *(v17 + 16);
  v32(v1, &v6[v31], v15);
  os_unfair_lock_unlock(*(v30 + 16));
  if (v42)
  {
    v33 = *(v29 + 40);
    v34 = v40[0];
    v32(v40[0], v1, v15);
    v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v15;
    *(v36 + 24) = v29;
    (*(v17 + 32))(v36 + v35, v34, v15);

    v37 = sub_1BF006210(v33, v41, v36);

    (v37)(v38);
  }

  v39 = v44;
  v44[3] = v43;
  v39[4] = &off_1F3DC1190;
  *v39 = v29;
  (*(v17 + 8))(v1, v15);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF024060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  swift_allocObject();
  return sub_1BF0240CC(a1, a2, v7, a4, a5);
}

uint64_t sub_1BF0240CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 32) = a5;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 24) = a4;
  return v5;
}

uint64_t sub_1BF02417C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v22 = a2;
  v21[3] = type metadata accessor for ProxyResolver();
  v21[4] = &protocol witness table for ProxyResolver;
  v21[0] = a3;
  v15 = *(v13 + 8);

  v15(&v22, v21, MEMORY[0x1E69E7C98] + 8, v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1BEFF9578(a2, a4, a5, a6, a7, a8, a9, v16);
}

void __swiftcall Version.init(_:)(TeaFoundation::Version_optional *__return_ptr retstr, NSBundle a2)
{
  v4 = sub_1BF02AEA8(a2.super.isa);
  if (!v4)
  {

    memset(v9, 0, sizeof(v9));
LABEL_8:
    sub_1BEFFD168(v9);
    goto LABEL_10;
  }

  sub_1BF0243AC(v4, v9);

  if (!*(&v9[1] + 1))
  {

    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    sub_1BF024410(v7, v8, v9);

    if (*&v9[0])
    {
      v5 = *(&v9[1] + 1);
      v6 = *(v9 + 8);
      retstr->value.base.numbers._rawValue = *&v9[0];
      retstr->value.qualifier.value.name = v6;
      retstr->value.qualifier.value.version.value.numbers._rawValue = v5;
      return;
    }
  }

  else
  {
  }

LABEL_10:
  *&retstr->value.base.numbers._rawValue = 0u;
  *&retstr->value.qualifier.value.name._object = 0u;
}

double sub_1BF0243AC@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1BF014CA8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1BF0075BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF024410@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = 45;
  v32 = 0xE100000000000000;
  v30[2] = &v31;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF0143EC(1, 1, sub_1BF014764, v30, a1, a2);
  v7 = v6;
  v8 = v6[2];
  if ((v8 - 1) > 1 || (v9 = v6[4], v10 = v6[5], v11 = v6[6], v12 = v6[7], _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0(), v13 = MEMORY[0x1BFB51F50](v9, v10, v11, v12), v15 = v14, , v16._countAndFlagsBits = v13, v16._object = v15, result = VersionNumber.init(_:)(v16), (v18 = v31) == 0))
  {

    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (v8 == 1)
  {

    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    if (v7[2] < 2uLL)
    {
      __break(1u);
      return result;
    }

    v22 = v7[8];
    v23 = v7[9];
    v24 = v7[10];
    v25 = v7[11];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v26 = MEMORY[0x1BFB51F50](v22, v23, v24, v25);
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    result = VersionQualifier.init(_:)(v29);
    v19 = v31;
    v20 = v32;
    v21 = v33;
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  return result;
}

TeaFoundation::VersionNumber_optional __swiftcall VersionNumber.init(_:)(Swift::String a1)
{
  v20 = v1;
  v24 = 46;
  v25 = 0xE100000000000000;
  v22 = &v24;
  isUniquelyReferenced_nonNull_native = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 0, sub_1BF014764, v21, a1._countAndFlagsBits, a1._object);
  v4 = isUniquelyReferenced_nonNull_native;
  v5 = 0;
  v6 = *(isUniquelyReferenced_nonNull_native + 16);
  v7 = (isUniquelyReferenced_nonNull_native + 56);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v5)
    {

      if (!*(v8 + 16))
      {
LABEL_22:

        v8 = 0;
      }

      *v20 = v8;
      goto LABEL_25;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v10 = *(v7 - 3);
    v9 = *(v7 - 2);
    if (!((v9 ^ v10) >> 14))
    {
      goto LABEL_21;
    }

    v12 = *(v7 - 1);
    v11 = *v7;
    if ((*v7 & 0x1000000000000000) != 0)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v15 = sub_1BF0EBDE4(v10, v9, v12, v11, 10);
      v19 = v18;

      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v11) & 0xF;
        v24 = *(v7 - 1);
        v25 = v11 & 0xFFFFFFFFFFFFFFLL;
        v13 = &v24;
      }

      else if ((v12 & 0x1000000000000000) != 0)
      {
        v13 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = sub_1BF17B2FC();
      }

      v15 = sub_1BF0247BC(v13, v14, v10, v9, v12, v11, 10);
      v23 = v16 & 1;
      if (v16)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BF024BF8();
      v8 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v8 + 16);
    if (v17 >= *(v8 + 24) >> 1)
    {
      sub_1BF024BF8();
      v8 = isUniquelyReferenced_nonNull_native;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + 8 * v17 + 32) = v15;
    v7 += 4;
    ++v5;
  }

  __break(1u);
LABEL_25:
  result.value.numbers._rawValue = isUniquelyReferenced_nonNull_native;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1BF0247BC(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1BF0B603C(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1BF17A27C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1BF0B603C(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1BF0B603C(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1BF17A27C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

void sub_1BF024BF8()
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

uint64_t sub_1BF024CCC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t Decodable.init(from:)@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[11] = *MEMORY[0x1E69E9840];
  v7 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v29 - v9;
  v11 = objc_opt_self();
  v12 = sub_1BF179D3C();

  v29[0] = 0;
  v13 = [v11 dataWithJSONObject:v12 options:1 error:v29];

  v14 = v29[0];
  if (v13)
  {
    v15 = sub_1BF17935C();
    v17 = v16;

    type metadata accessor for _TeaJSONDecoder();
    swift_initStackObject();
    v18 = _TeaJSONDecoder.init()();
    swift_beginAccess();
    v19 = *(v18 + 48);
    v20 = *(v18 + 56);
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    sub_1BEFE52DC(v19, v20);
    v21 = a3;
    v22 = 0;
    sub_1BF015544(a2, v15, v17, a2, v21, v10);
    sub_1BF014E18(v15, v17);

    __swift_storeEnumTagSinglePayload(v10, 0, 1, a2);
    (*(*(a2 - 1) + 32))(a4, v10, a2);
  }

  else
  {
    v23 = v14;
    v24 = sub_1BF17911C();

    swift_willThrow();
    v25 = sub_1BF17ACBC();
    sub_1BF071C2C();
    v26 = sub_1BF17AE3C();
    sub_1BF1797CC("Failed to create data", 21, 2, &dword_1BEFE0000, v26, v25, MEMORY[0x1E69E7CC0]);

    v22 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v22, 1, a2);
}

uint64_t _TeaJSONDecoder.init()()
{
  sub_1BF17B42C();
  v1 = sub_1BF179DAC();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v1;
  *(v0 + 40) = 2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_1BF0250CC()
{
  v4 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = v0[5];
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_143;
  }

  v7 = v0[4];
  if (v6 + 1 >= v7)
  {
LABEL_143:
    v71 = v0[7];
    v2 = v6 - v71;
    if (!__OFSUB__(v6, v71))
    {
      v72 = v0[6];
      sub_1BF053D1C();
      v68 = swift_allocError();
      *v69 = v72;
      *(v69 + 8) = v2;
      *(v69 + 16) = 0u;
      *(v69 + 32) = 0u;
      v70 = 16;
      goto LABEL_141;
    }

    __break(1u);
    goto LABEL_304;
  }

  v8 = sub_1BF17931C();
  if (!v10 & v9)
  {
    switch(v8)
    {
      case 'f':
        v40 = v0[5];
        v12 = __OFADD__(v40, 2);
        v41 = v40 + 2;
        if (v12)
        {
          goto LABEL_267;
        }

        v0[5] = v41;
        if (qword_1EBDCAFF8 != -1)
        {
          swift_once();
        }

        v14 = &qword_1EBDCC7C0;
        goto LABEL_73;
      case '/':
        v44 = v0[5];
        v12 = __OFADD__(v44, 2);
        v45 = v44 + 2;
        if (v12)
        {
          goto LABEL_270;
        }

        v0[5] = v45;
        if (qword_1ED8EF708 != -1)
        {
          swift_once();
        }

        v14 = &qword_1ED8EF710;
        goto LABEL_73;
      case '\\':
        v42 = v0[5];
        v12 = __OFADD__(v42, 2);
        v43 = v42 + 2;
        if (v12)
        {
          goto LABEL_269;
        }

        v0[5] = v43;
        if (qword_1ED8EB7E0 != -1)
        {
          swift_once();
        }

        v14 = &qword_1ED8EB7E8;
        goto LABEL_73;
      case 'b':
        v38 = v0[5];
        v12 = __OFADD__(v38, 2);
        v39 = v38 + 2;
        if (v12)
        {
          goto LABEL_266;
        }

        v0[5] = v39;
        if (qword_1EBDCAFF0 != -1)
        {
          goto LABEL_271;
        }

        goto LABEL_60;
      case '""':
        v11 = v0[5];
        v12 = __OFADD__(v11, 2);
        v13 = v11 + 2;
        if (v12)
        {
          goto LABEL_268;
        }

        v0[5] = v13;
        if (qword_1ED8ECF28 != -1)
        {
          swift_once();
        }

        v14 = &qword_1ED8ECF30;
        goto LABEL_73;
    }

LABEL_19:
    v17 = v0[5];
    v18 = v0[7];
    v19 = v17 - v18;
    if (__OFSUB__(v17, v18))
    {
      __break(1u);
    }

    else if (!__OFADD__(v17, 2))
    {
      if (v17 + 2 >= v17)
      {
LABEL_140:
        v64 = v0[6];
        v65 = sub_1BF17930C();
        v67 = v66;
        sub_1BF053D1C();
        v68 = swift_allocError();
        *v69 = v64;
        *(v69 + 8) = v19;
        *(v69 + 16) = v65;
        *(v69 + 24) = v67;
        *(v69 + 32) = 0;
        *(v69 + 40) = 0;
        v70 = 9;
LABEL_141:
        *(v69 + 48) = v70;
        v1 = v68;
        swift_willThrow();
        return v1;
      }

      __break(1u);
LABEL_24:
      v20 = v0[5];
      v12 = __OFADD__(v20, 2);
      v21 = v20 + 2;
      if (!v12)
      {
        v0[5] = v21;
        if (qword_1EBDCAB50 == -1)
        {
LABEL_26:
          v14 = &qword_1EBDCAB58;
          goto LABEL_73;
        }

LABEL_150:
        swift_once();
        goto LABEL_26;
      }

LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    __break(1u);
    goto LABEL_146;
  }

  switch(v8)
  {
    case 'n':
      v15 = v0[5];
      v12 = __OFADD__(v15, 2);
      v16 = v15 + 2;
      if (v12)
      {
        goto LABEL_147;
      }

      v0[5] = v16;
      if (qword_1ED8EBA00 != -1)
      {
        swift_once();
      }

      v14 = &qword_1ED8EBA08;
      goto LABEL_73;
    case 'o':
    case 'p':
    case 'q':
    case 's':
      goto LABEL_19;
    case 'r':
      v22 = v0[5];
      v12 = __OFADD__(v22, 2);
      v23 = v22 + 2;
      if (v12)
      {
        goto LABEL_148;
      }

      v0[5] = v23;
      if (qword_1EBDCB008 != -1)
      {
        swift_once();
      }

      v14 = &qword_1EBDCC7D0;
      goto LABEL_73;
    case 't':
      goto LABEL_24;
    case 'u':
      v6 = v0[5];
      v24 = v6 + 6;
      if (__OFADD__(v6, 6))
      {
        goto LABEL_149;
      }

      if (v24 >= v7)
      {
        v73 = v0[7];
        v2 = v6 - v73;
        if (!__OFSUB__(v6, v73))
        {
          v74 = v0[6];
          sub_1BF053D1C();
          v68 = swift_allocError();
          *v69 = v74;
          *(v69 + 8) = v2;
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0u;
          v70 = 17;
          goto LABEL_141;
        }

LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      if (v24 < v6 + 2)
      {
        __break(1u);
      }

      else
      {
        v25 = sub_1BF17930C();
        v27 = v26;
        sub_1BF17A11C();
        v2 = sub_1BF17A0CC();
        v3 = v28;
        sub_1BF014E18(v25, v27);
        if (!v3)
        {
LABEL_311:
          __break(1u);
          goto LABEL_312;
        }

        v29 = HIBYTE(v3) & 0xF;
        v30 = v2 & 0xFFFFFFFFFFFFLL;
        if ((v3 & 0x2000000000000000) != 0)
        {
          v31 = HIBYTE(v3) & 0xF;
        }

        else
        {
          v31 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (!v31)
        {
          goto LABEL_137;
        }

        if ((v3 & 0x1000000000000000) == 0)
        {
          if ((v3 & 0x2000000000000000) == 0)
          {
            if ((v2 & 0x1000000000000000) == 0)
            {
              goto LABEL_275;
            }

            for (i = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1BF17B2FC())
            {
              v33 = *i;
              if (v33 == 43)
              {
                if (v30 < 1)
                {
                  goto LABEL_281;
                }

                v29 = v30 - 1;
                if (v30 == 1)
                {
                  goto LABEL_135;
                }

                if (i)
                {
                  LODWORD(v2) = 0;
                  v51 = i + 1;
                  while (1)
                  {
                    v52 = *v51;
                    v53 = v52 - 48;
                    if ((v52 - 48) >= 0xA)
                    {
                      if ((v52 - 65) < 6)
                      {
                        v53 = v52 - 55;
                      }

                      else
                      {
                        if ((v52 - 97) > 5)
                        {
                          goto LABEL_135;
                        }

                        v53 = v52 - 87;
                      }
                    }

                    if (v2 >> 28)
                    {
                      goto LABEL_135;
                    }

                    LODWORD(v2) = 16 * v2 + v53;
                    ++v51;
                    if (!--v29)
                    {
                      goto LABEL_136;
                    }
                  }
                }
              }

              else if (v33 == 45)
              {
                if (v30 < 1)
                {
                  __break(1u);
LABEL_280:
                  __break(1u);
LABEL_281:
                  __break(1u);
                  goto LABEL_282;
                }

                v29 = v30 - 1;
                if (v30 == 1)
                {
                  goto LABEL_135;
                }

                if (i)
                {
                  LODWORD(v2) = 0;
                  v34 = i + 1;
                  while (1)
                  {
                    v35 = *v34;
                    v36 = v35 - 48;
                    if ((v35 - 48) >= 0xA)
                    {
                      if ((v35 - 65) < 6)
                      {
                        v36 = v35 - 55;
                      }

                      else
                      {
                        if ((v35 - 97) > 5)
                        {
                          break;
                        }

                        v36 = v35 - 87;
                      }
                    }

                    if (v2 >> 28)
                    {
                      break;
                    }

                    v37 = 16 * v2;
                    LODWORD(v2) = 16 * v2 - v36;
                    if (v37 < v36)
                    {
                      break;
                    }

                    ++v34;
                    if (!--v29)
                    {
                      goto LABEL_136;
                    }
                  }

LABEL_135:
                  LODWORD(v2) = 0;
                  LOBYTE(v29) = 1;
                  goto LABEL_136;
                }
              }

              else
              {
                if (!v30)
                {
                  goto LABEL_135;
                }

                if (i)
                {
                  LODWORD(v2) = 0;
                  while (1)
                  {
                    v57 = *i;
                    v58 = v57 - 48;
                    if ((v57 - 48) >= 0xA)
                    {
                      if ((v57 - 65) < 6)
                      {
                        v58 = v57 - 55;
                      }

                      else
                      {
                        if ((v57 - 97) > 5)
                        {
                          goto LABEL_135;
                        }

                        v58 = v57 - 87;
                      }
                    }

                    if (v2 >> 28)
                    {
                      goto LABEL_135;
                    }

                    LODWORD(v2) = 16 * v2 + v58;
                    ++i;
                    if (!--v30)
                    {
                      goto LABEL_124;
                    }
                  }
                }
              }

              LODWORD(v2) = 0;
LABEL_124:
              LOBYTE(v29) = 0;
LABEL_136:
              v125 = v29;
              if ((v29 & 1) == 0)
              {
                goto LABEL_155;
              }

LABEL_137:

              v62 = v0[5];
              v63 = v0[7];
              v19 = v62 - v63;
              if (__OFSUB__(v62, v63))
              {
                __break(1u);
LABEL_273:
                __break(1u);
                goto LABEL_274;
              }

              if (__OFADD__(v62, 6))
              {
                goto LABEL_273;
              }

              if (v62 + 6 >= v62)
              {
                goto LABEL_140;
              }

LABEL_274:
              __break(1u);
LABEL_275:
              ;
            }
          }

          v123 = v2;
          v124 = v3 & 0xFFFFFFFFFFFFFFLL;
          if (v2 != 43)
          {
            if (v2 != 45)
            {
              if (!v29)
              {
                goto LABEL_135;
              }

              LODWORD(v2) = 0;
              v59 = &v123;
              while (1)
              {
                v60 = *v59;
                v61 = v60 - 48;
                if ((v60 - 48) >= 0xA)
                {
                  if ((v60 - 65) < 6)
                  {
                    v61 = v60 - 55;
                  }

                  else
                  {
                    if ((v60 - 97) > 5)
                    {
                      goto LABEL_135;
                    }

                    v61 = v60 - 87;
                  }
                }

                if (v2 >> 28)
                {
                  goto LABEL_135;
                }

                LODWORD(v2) = 16 * v2 + v61;
                v59 = (v59 + 1);
                if (!--v29)
                {
                  goto LABEL_136;
                }
              }
            }

            if (v29)
            {
              if (!--v29)
              {
                goto LABEL_135;
              }

              LODWORD(v2) = 0;
              v47 = &v123 + 1;
              while (1)
              {
                v48 = *v47;
                v49 = v48 - 48;
                if ((v48 - 48) >= 0xA)
                {
                  if ((v48 - 65) < 6)
                  {
                    v49 = v48 - 55;
                  }

                  else
                  {
                    if ((v48 - 97) > 5)
                    {
                      goto LABEL_135;
                    }

                    v49 = v48 - 87;
                  }
                }

                if (v2 >> 28)
                {
                  goto LABEL_135;
                }

                v50 = 16 * v2;
                LODWORD(v2) = 16 * v2 - v49;
                if (v50 < v49)
                {
                  goto LABEL_135;
                }

                ++v47;
                if (!--v29)
                {
                  goto LABEL_136;
                }
              }
            }

            goto LABEL_280;
          }

          if (v29)
          {
            if (!--v29)
            {
              goto LABEL_135;
            }

            LODWORD(v2) = 0;
            v54 = &v123 + 1;
            while (1)
            {
              v55 = *v54;
              v56 = v55 - 48;
              if ((v55 - 48) >= 0xA)
              {
                if ((v55 - 65) < 6)
                {
                  v56 = v55 - 55;
                }

                else
                {
                  if ((v55 - 97) > 5)
                  {
                    goto LABEL_135;
                  }

                  v56 = v55 - 87;
                }
              }

              if (v2 >> 28)
              {
                goto LABEL_135;
              }

              LODWORD(v2) = 16 * v2 + v56;
              ++v54;
              if (!--v29)
              {
                goto LABEL_136;
              }
            }
          }

LABEL_282:
          __break(1u);
          goto LABEL_283;
        }
      }

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v2 = sub_1BF0EC378(v2, v3, 16);

      if ((v2 & 0x100000000) != 0)
      {
        goto LABEL_137;
      }

LABEL_155:
      if (v2 >> 11 < 0x1B)
      {

LABEL_157:
        v75 = v0[5];
        v12 = __OFADD__(v75, 6);
        v76 = v75 + 6;
        if (v12)
        {
          __break(1u);
        }

        else
        {
          v0[5] = v76;
          if (v2 <= 0x7F)
          {
            v77 = v2 + 1;
LABEL_160:
            v123 = (v77 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v77) >> 3))));
            return sub_1BF17A19C();
          }
        }

        LODWORD(v6) = (v2 & 0x3F) << 8;
        if (v2 < 0x800)
        {
          v77 = (v2 >> 6) + v6 + 33217;
          goto LABEL_160;
        }

LABEL_313:
        v121 = (v6 | (v2 >> 6) & 0x3F) << 8;
        v122 = (((v121 | (v2 >> 12) & 0x3F) << 8) | (v2 >> 18)) - 2122219023;
        v77 = (v2 >> 12) + v121 + 8487393;
        if (WORD1(v2))
        {
          v77 = v122;
        }

        goto LABEL_160;
      }

      if (v2 >> 10 <= 0x36)
      {
        goto LABEL_168;
      }

      if ((v2 - 1114112) >= 0xFFEFE000)
      {
        goto LABEL_157;
      }

      v78 = v0[5];
      v79 = v0[7];
      v19 = v78 - v79;
      if (__OFSUB__(v78, v79))
      {
        __break(1u);
        goto LABEL_287;
      }

      if (__OFADD__(v78, 6))
      {
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
        goto LABEL_290;
      }

      if (v78 + 6 >= v78)
      {
        goto LABEL_140;
      }

      __break(1u);
LABEL_168:
      v80 = v0[5];
      if (__OFADD__(v80, 12))
      {
LABEL_283:
        __break(1u);
        goto LABEL_284;
      }

      if (v80 + 12 >= v7)
      {
LABEL_284:

        v115 = v0[5];
        v116 = v0[7];
        v117 = v115 - v116;
        if (!__OFSUB__(v115, v116))
        {
          v118 = v0[6];
          sub_1BF053D1C();
          v68 = swift_allocError();
          *v69 = v118;
          *(v69 + 8) = v117;
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0u;
          v70 = 14;
          goto LABEL_141;
        }

        __break(1u);
LABEL_317:
        __break(1u);
        JUMPOUT(0x1BF025FB0);
      }

      sub_1BF163FF8(v80 + 6, 0x5Cu);
      if (v1)
      {

        return v1;
      }

      v81 = v0[5];
      if (__OFADD__(v81, 7))
      {
        goto LABEL_288;
      }

      sub_1BF163FF8(v81 + 7, 0x75u);
      v82 = v0[5];
      if (__OFADD__(v82, 12))
      {
        goto LABEL_289;
      }

      if (v82 + 12 < v82 + 8)
      {
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v83 = sub_1BF17930C();
      v85 = v84;
      sub_1BF17A11C();
      v86 = sub_1BF17A0CC();
      v88 = v87;
      sub_1BF014E18(v83, v85);
      if (!v88)
      {
        goto LABEL_317;
      }

      v6 = HIBYTE(v88) & 0xF;
      v89 = v86 & 0xFFFFFFFFFFFFLL;
      if ((v88 & 0x2000000000000000) != 0)
      {
        v90 = HIBYTE(v88) & 0xF;
      }

      else
      {
        v90 = v86 & 0xFFFFFFFFFFFFLL;
      }

      if (!v90)
      {
LABEL_291:

        goto LABEL_262;
      }

      if ((v88 & 0x1000000000000000) != 0)
      {
        v92 = sub_1BF0EC378(v86, v88, 16);

        if ((v92 & 0x100000000) != 0)
        {
          goto LABEL_262;
        }

LABEL_293:
        if ((v92 - 57344) >= 0xFFFFFC00)
        {
LABEL_298:
          v120 = v0[5];
          v12 = __OFADD__(v120, 12);
          v6 = v120 + 12;
          if (!v12)
          {
            v0[5] = v6;
            v123 = (((v92 + (v2 << 10) - 56613888) >> 4) & 0x3F00 | ((((v92 & 0x3F) << 8) | ((v92 + (v2 << 10) - 56613888) >> 6) & 0x3F) << 16) | ((v92 + (v2 << 10) - 56613888) >> 18)) - 2139062032;
            return sub_1BF17A19C();
          }

          goto LABEL_305;
        }

        v6 = v0[5];
        v119 = v0[7];
        v19 = v6 - v119;
        if (!__OFSUB__(v6, v119))
        {
          if (__OFADD__(v6, 12))
          {
            goto LABEL_306;
          }

          if (v6 + 12 >= v6 + 6)
          {
            goto LABEL_140;
          }

          __break(1u);
          goto LABEL_298;
        }

LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      if ((v88 & 0x2000000000000000) != 0)
      {
        v123 = v86;
        v124 = v88 & 0xFFFFFFFFFFFFFFLL;
        if (v86 == 43)
        {
          if (v6)
          {
            if (!--v6)
            {
              goto LABEL_260;
            }

            LODWORD(v92) = 0;
            v104 = &v123 + 1;
            while (1)
            {
              v105 = *v104;
              v106 = v105 - 48;
              if ((v105 - 48) >= 0xA)
              {
                if ((v105 - 65) < 6)
                {
                  v106 = v105 - 55;
                }

                else
                {
                  if ((v105 - 97) > 5)
                  {
                    goto LABEL_260;
                  }

                  v106 = v105 - 87;
                }
              }

              if (v92 >> 28)
              {
                goto LABEL_260;
              }

              LODWORD(v92) = 16 * v92 + v106;
              ++v104;
              if (!--v6)
              {
                goto LABEL_261;
              }
            }
          }

LABEL_310:
          __break(1u);
          goto LABEL_311;
        }

        if (v86 != 45)
        {
          if (!v6)
          {
            goto LABEL_260;
          }

          LODWORD(v92) = 0;
          v109 = &v123;
          while (1)
          {
            v110 = *v109;
            v111 = v110 - 48;
            if ((v110 - 48) >= 0xA)
            {
              if ((v110 - 65) < 6)
              {
                v111 = v110 - 55;
              }

              else
              {
                if ((v110 - 97) > 5)
                {
                  goto LABEL_260;
                }

                v111 = v110 - 87;
              }
            }

            if (v92 >> 28)
            {
              goto LABEL_260;
            }

            LODWORD(v92) = 16 * v92 + v111;
            v109 = (v109 + 1);
            if (!--v6)
            {
              goto LABEL_261;
            }
          }
        }

        if (v6)
        {
          if (!--v6)
          {
            goto LABEL_260;
          }

          LODWORD(v92) = 0;
          v97 = &v123 + 1;
          while (1)
          {
            v98 = *v97;
            v99 = v98 - 48;
            if ((v98 - 48) >= 0xA)
            {
              if ((v98 - 65) < 6)
              {
                v99 = v98 - 55;
              }

              else
              {
                if ((v98 - 97) > 5)
                {
                  goto LABEL_260;
                }

                v99 = v98 - 87;
              }
            }

            if (v92 >> 28)
            {
              goto LABEL_260;
            }

            v100 = 16 * v92;
            LODWORD(v92) = 16 * v92 - v99;
            if (v100 < v99)
            {
              goto LABEL_260;
            }

            ++v97;
            if (!--v6)
            {
              goto LABEL_261;
            }
          }
        }

LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      if ((v86 & 0x1000000000000000) == 0)
      {
        goto LABEL_302;
      }

      for (j = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32); ; j = sub_1BF17B2FC())
      {
        LODWORD(v6) = *j;
        if (v6 == 43)
        {
          if (v89 < 1)
          {
            goto LABEL_309;
          }

          v6 = v89 - 1;
          if (v89 == 1)
          {
            goto LABEL_260;
          }

          if (j)
          {
            LODWORD(v92) = 0;
            v101 = j + 1;
            while (1)
            {
              v102 = *v101;
              v103 = v102 - 48;
              if ((v102 - 48) >= 0xA)
              {
                if ((v102 - 65) < 6)
                {
                  v103 = v102 - 55;
                }

                else
                {
                  if ((v102 - 97) > 5)
                  {
                    goto LABEL_260;
                  }

                  v103 = v102 - 87;
                }
              }

              if (v92 >> 28)
              {
                goto LABEL_260;
              }

              LODWORD(v92) = 16 * v92 + v103;
              ++v101;
              if (!--v6)
              {
                goto LABEL_261;
              }
            }
          }
        }

        else if (v6 == 45)
        {
          if (v89 < 1)
          {
            goto LABEL_307;
          }

          v6 = v89 - 1;
          if (v89 == 1)
          {
            goto LABEL_260;
          }

          if (j)
          {
            LODWORD(v92) = 0;
            v93 = j + 1;
            while (1)
            {
              v94 = *v93;
              v95 = v94 - 48;
              if ((v94 - 48) >= 0xA)
              {
                if ((v94 - 65) < 6)
                {
                  v95 = v94 - 55;
                }

                else
                {
                  if ((v94 - 97) > 5)
                  {
                    break;
                  }

                  v95 = v94 - 87;
                }
              }

              if (v92 >> 28)
              {
                break;
              }

              v96 = 16 * v92;
              LODWORD(v92) = 16 * v92 - v95;
              if (v96 < v95)
              {
                break;
              }

              ++v93;
              if (!--v6)
              {
                goto LABEL_261;
              }
            }

LABEL_260:
            LODWORD(v92) = 0;
            LOBYTE(v6) = 1;
            goto LABEL_261;
          }
        }

        else
        {
          if (!v89)
          {
            goto LABEL_260;
          }

          if (j)
          {
            LODWORD(v92) = 0;
            while (1)
            {
              v107 = *j;
              v108 = v107 - 48;
              if ((v107 - 48) >= 0xA)
              {
                if ((v107 - 65) < 6)
                {
                  v108 = v107 - 55;
                }

                else
                {
                  if ((v107 - 97) > 5)
                  {
                    goto LABEL_260;
                  }

                  v108 = v107 - 87;
                }
              }

              if (v92 >> 28)
              {
                goto LABEL_260;
              }

              LODWORD(v92) = 16 * v92 + v108;
              ++j;
              if (!--v89)
              {
                goto LABEL_249;
              }
            }
          }
        }

        LODWORD(v92) = 0;
LABEL_249:
        LOBYTE(v6) = 0;
LABEL_261:
        v125 = v6;
        v112 = v6;

        if ((v112 & 1) == 0)
        {
          goto LABEL_293;
        }

LABEL_262:
        v113 = v0[5];
        v114 = v0[7];
        v19 = v113 - v114;
        if (__OFSUB__(v113, v114))
        {
          __break(1u);
          goto LABEL_301;
        }

        if (!__OFADD__(v113, 12))
        {
          break;
        }

LABEL_301:
        __break(1u);
LABEL_302:
        ;
      }

      if (v113 + 12 >= v113 + 6)
      {
        goto LABEL_140;
      }

      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      swift_once();
LABEL_60:
      v14 = &qword_1EBDCC7B0;
LABEL_73:
      v1 = *v14;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return v1;
    default:
      JUMPOUT(0);
  }
}

uint64_t sub_1BF025FE4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1BF17A19C();
  *a3 = result;
  *a4 = v7;
  return result;
}

void sub_1BF026028()
{
  v0 = [objc_opt_self() mainBundle];

  Version.init(_:)(&qword_1ED8EB050, v0);
}

void static Version.mainBundleShortVersion.getter(void *a1@<X8>)
{
  if (qword_1ED8EB048 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8EB050;
  v3 = *algn_1ED8EB058;
  v4 = qword_1ED8EB060;
  v5 = unk_1ED8EB068;
  *a1 = qword_1ED8EB050;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;

  sub_1BF0260EC(v2, v3, v4, v5);
}

void sub_1BF0260EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BF026144(a2, a3, a4);
  }
}

void sub_1BF026144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF026188()
{
  type metadata accessor for ReferenceService();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceService.add(typeService:)()
{
  OUTLINED_FUNCTION_7_7();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v8, v2, v3);
  v4 = v8[0];
  v5 = v8[1];
  sub_1BEFE6A78(v0, v7);
  swift_beginAccess();
  sub_1BF02635C(v7, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1BF026264()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  OUTLINED_FUNCTION_6_4(v1, v3);
  sub_1BEFF6B90();
  OUTLINED_FUNCTION_1_5();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  sub_1BF02647C(0);
  if (OUTLINED_FUNCTION_10_7(v9))
  {
    OUTLINED_FUNCTION_41_0();
    sub_1BEFF6B90();
    OUTLINED_FUNCTION_11_2();
    if (!v11)
    {
      goto LABEL_14;
    }

    v7 = v10;
  }

  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v0 + 56) + 40 * v7));
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_55();

    return sub_1BEFE87B0(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    sub_1BF0265A4(v16, v17, v18, v2, v19);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF02635C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BEFE87B0(a1, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1BF026264();

    *v3 = v15;
  }

  else
  {
    v7 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &unk_1EBDCAED0, sub_1BF0AB7F0, MEMORY[0x1E69E6720], sub_1BF0ABA08);
    sub_1BF0826E4(a2, a3, v8, v9, v10, v11, v12, v13, v14, v16[0]);

    return sub_1BF0ABBDC(v16, &unk_1EBDCAED0, sub_1BF0AB7F0, v7, sub_1BF0ABA08);
  }

  return result;
}

void sub_1BF02647C(uint64_t a1)
{
  if (!qword_1ED8E9C00)
  {
    sub_1BEFE6EA8(255, &qword_1ED8EACC8, &protocol descriptor for ReferenceTypeServiceType);
    sub_1BF0264F8();
    v1 = sub_1BF17B46C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E9C00);
    }
  }
}

unint64_t sub_1BF0264F8()
{
  result = qword_1ED8EABB0;
  if (!qword_1ED8EABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EABB0);
  }

  return result;
}

unint64_t sub_1BF026550()
{
  result = qword_1ED8EABA0;
  if (!qword_1ED8EABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EABA0);
  }

  return result;
}

void sub_1BF0265A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  sub_1BEFE87B0(v8, v7 + 40 * v6);
  OUTLINED_FUNCTION_12_11();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t static ReferenceType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v2;
}

uint64_t sub_1BF026674()
{
  OUTLINED_FUNCTION_12_23();
  v2 = OUTLINED_FUNCTION_23_10();
  v0(v2);
  return v1;
}

uint64_t sub_1BF0266EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_34(a1, a2);
  toKey<A>(type:name:)();
  sub_1BF0093DC();
}

void sub_1BF026754(uint64_t a1)
{
  if (!qword_1ED8EAE10)
  {
    sub_1BF02693C(255, &qword_1ED8EAE78, type metadata accessor for DisposableWorker, MEMORY[0x1E69E62F8]);
    type metadata accessor for os_unfair_lock_s(255, v1, v2, v3);
    v4 = sub_1BF17B2EC();
    if (!v5)
    {
      atomic_store(v4, &qword_1ED8EAE10);
    }
  }
}

void BackgroundFetchManager.init(journal:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers;
  sub_1BF026754(0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_configuredTriggers] = MEMORY[0x1E69E7CD0];
  *(v5 + 16) = v6;
  v7 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_networkReachability;
  if (qword_1ED8EB7C8 != -1)
  {
    OUTLINED_FUNCTION_18_9(&qword_1ED8EB7C8);
  }

  *&v1[v7] = qword_1ED8F5260;
  v8 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_backgroundTaskSchedulingQueue;
  v9 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

  v10 = [v9 init];
  *&v1[v8] = v10;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager] = 0;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor] = 0;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_journal] = a1;
  swift_unknownObjectRetain();
  [v10 setMaxConcurrentOperationCount_];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_66();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55_4();
}

void sub_1BF02693C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1BF0269C4()
{
  type metadata accessor for NetworkReachability();
  v0 = swift_allocObject();
  result = sub_1BF026A24();
  qword_1ED8F5260 = v0;
  return result;
}

void *sub_1BF026A24()
{
  v1 = v0;
  v16 = sub_1BF17AD4C();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17AD1C();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v9 = sub_1BF179BBC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  OUTLINED_FUNCTION_2_0();
  v0[2] = 0;
  sub_1BEFF6E88();
  sub_1BF179B8C();
  sub_1BF00AFCC(&qword_1ED8F0BE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1BF026E68(0, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BF014364();
  sub_1BF17B0BC();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v16);
  v0[3] = sub_1BF17AD9C();
  sub_1BF179A8C();
  swift_allocObject();
  v0[4] = sub_1BF179A7C();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1BF026E68(0, &qword_1ED8EB130, sub_1BF026ECC, type metadata accessor for Lazy);
  swift_allocObject();

  v1[2] = sub_1BF02AF14(0, sub_1BF03752C, v11);

  v12 = swift_allocObject();
  swift_weakInit();

  sub_1BF009984(sub_1BF02EF30, v12);
  sub_1BF179A5C();

  v13 = v1[3];

  v14 = v13;
  sub_1BF179A6C();

  return v1;
}

uint64_t sub_1BF026DDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF026E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17A65C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF026E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF026ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED8EC078[0])
  {
    v4 = type metadata accessor for AsyncObservable(0, &type metadata for NetworkStatus, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_1ED8EC078);
    }
  }
}

uint64_t sub_1BF026F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a2;
}

double sub_1BF026FAC(uint64_t a1, int a2)
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

unint64_t sub_1BF026FD8()
{
  result = qword_1EBDCAB38;
  if (!qword_1EBDCAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB38);
  }

  return result;
}

unint64_t sub_1BF027030()
{
  result = qword_1EBDCAB30;
  if (!qword_1EBDCAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB30);
  }

  return result;
}

unint64_t sub_1BF027090()
{
  result = qword_1ED8EB4A0;
  if (!qword_1ED8EB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB4A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation22BackgroundFetchTriggerO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t BackgroundFetchTrigger.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else if (v2 == 2)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else
    {
      OUTLINED_FUNCTION_50_3();
      sub_1BF179F3C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_3();
  }

  return sub_1BF179F3C();
}

uint64_t sub_1BF0271B4(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1BF17BB6C();
  BackgroundFetchTrigger.hash(into:)(v5);
  return sub_1BF17BB9C();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1BF027218(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 3)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF027278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF0272DC(uint64_t a1)
{
  sub_1BF028120(319);
  if (v1 <= 0x3F)
  {
    sub_1BF17AE6C();
    if (v2 <= 0x3F)
    {
      sub_1BF1797FC();
      if (v3 <= 0x3F)
      {
        sub_1BF027464(319);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void SingleValueStore.init(directory:subdirectoryPath:filename:log:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v66 = v2;
  v65 = v3;
  v63 = v4;
  v61 = v5;
  sub_1BF00AE78(0);
  v7 = OUTLINED_FUNCTION_68(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v60 = v10 - v9;
  OUTLINED_FUNCTION_12_9();
  v62 = sub_1BF1797FC();
  OUTLINED_FUNCTION_1();
  v67 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v64 = v15 - v14;
  OUTLINED_FUNCTION_12_9();
  v59 = sub_1BF17AD4C();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  sub_1BF17AD1C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_2_0();
  v25 = sub_1BF179BBC();
  v26 = OUTLINED_FUNCTION_68(v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_2_0();
  v58 = qword_1ED8EE1E8;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  sub_1BF179B7C();
  v68 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_13();
  sub_1BF00AEAC(v28, v29, MEMORY[0x1E69E8040]);
  sub_1BF00B014(0);
  OUTLINED_FUNCTION_8_10();
  sub_1BF00AEAC(v30, v31, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  (*(v17 + 104))(v22, *MEMORY[0x1E69E8090], v59);
  *(v0 + v58) = sub_1BF17AD9C();
  v32 = qword_1ED8EE200;
  v68 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v32) = UnfairLock.init(options:)(&v68);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_4_0();
  *(v0 + *(v37 + 160)) = 0;
  OUTLINED_FUNCTION_4_0();
  v39 = *(v38 + 168);
  *(v1 + v39) = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_4_0();
  sub_1BF028120(0);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = v1 + qword_1ED8EE1F0;
  *v44 = v63;
  *(v44 + 8) = 0;
  sub_1BF17923C();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v49 = (v1 + qword_1ED8EE208);
  *v49 = v65;
  v49[1] = v66;
  OUTLINED_FUNCTION_5_10((v1 + qword_1ED8EE1F8));
  sub_1BF0279C0(v61, v60, v50);
  if (__swift_getEnumTagSinglePayload(v60, 1, v62) == 1)
  {
    v51 = v64;
    v52 = v67;
    if (qword_1ED8EDDA8 != -1)
    {
      OUTLINED_FUNCTION_10_14(&qword_1ED8EDDA8);
    }

    v53 = __swift_project_value_buffer(v62, qword_1ED8F5280);
    (*(v67 + 16))(v64, v53, v62);
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v61, v54);
    if (__swift_getEnumTagSinglePayload(v60, 1, v62) != 1)
    {
      OUTLINED_FUNCTION_0_24();
      sub_1BF00B048(v60, v55);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v61, v56);
    v52 = v67;
    v51 = v64;
    (*(v67 + 32))(v64, v60, v62);
  }

  OUTLINED_FUNCTION_4_0();
  (*(v52 + 32))(v1 + *(v57 + 176), v51, v62);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0279C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1BF027A28(uint64_t a1)
{
  if (!qword_1ED8ED410)
  {
    sub_1BF027AD4(255);
    v3 = v2;
    sub_1BF027B68(255);
    v5 = v4;
    v6 = sub_1BF00AF3C(&qword_1ED8ECBD8, sub_1BF027AD4, MEMORY[0x1E69E64F8]);
    v7 = type metadata accessor for PromiseDeduper(a1, v3, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1ED8ED410);
    }
  }
}

void sub_1BF027AD4(uint64_t a1)
{
  if (!qword_1ED8ECBE0)
  {
    sub_1BF17923C();
    sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1BF17A9AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ECBE0);
    }
  }
}

void sub_1BF027B68(uint64_t a1)
{
  if (!qword_1ED8ECC20)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken(255);
    sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1BF179E9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ECC20);
    }
  }
}

uint64_t type metadata accessor for AuthToken(uint64_t a1)
{
  result = qword_1ED8ECD40;
  if (!qword_1ED8ECD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BF027C60(uint64_t a1)
{
  v1[2] = MEMORY[0x1E69E7CC8];
  v6 = 0;
  v3 = type metadata accessor for UnfairLock();
  swift_allocObject();
  v4 = UnfairLock.init(options:)(&v6);
  v1[6] = v3;
  v1[7] = &protocol witness table for UnfairLock;
  v1[3] = v4;
  v1[8] = a1;
  return v1;
}

void sub_1BF027CE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_1_61(v2 + 24, a2);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  v8 = *(v2 + 40);
  *(v2 + 40) = v5;
  sub_1BF00A8F8(v6, v7, v8);
}

void sub_1BF027DAC()
{
  OUTLINED_FUNCTION_32();
  v23 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_5_41();
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-1] - v11;
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24[-1] - v17;
  v19 = *(v0 + *(v0 + 112));
  UnfairLock.lock()();
  sub_1BF005128(v12);
  OUTLINED_FUNCTION_32_10(v12);
  if (v20)
  {
    (*(v8 + 8))(v12, v6);
    OUTLINED_FUNCTION_14_0();
    v21 = swift_allocObject();
    v21[2] = v5;
    v21[3] = v3;
    v21[4] = v23;
    v24[3] = sub_1BF02E89C;
    v24[4] = v21;
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_7_2(v0 + *(v22 + 104), v24);
    OUTLINED_FUNCTION_3_44();
    swift_getFunctionTypeMetadata1();
    sub_1BF17A65C();

    sub_1BF17A5DC();
    swift_endAccess();
    os_unfair_lock_unlock(*(v19 + 16));
  }

  else
  {
    (*(v14 + 32))(v18, v12, v5);
    os_unfair_lock_unlock(*(v19 + 16));
    v3(v18);
    (*(v14 + 8))(v18, v5);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF027FFC()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void TaskScheduler.scheduleLowPriority(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v10 = a1;
  v11 = a2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  OUTLINED_FUNCTION_3_39();
  v8 = v4;
  v9 = &block_descriptor_12;
  v5 = _Block_copy(&v6);

  [v3 addOperationWithBlock_];
  _Block_release(v5);
}

uint64_t sub_1BF0280E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF028154()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1ED8F5280);
  OUTLINED_FUNCTION_3_24();
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1ED8EFC00);
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_1_39();
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return swift_willThrow();
  }

  else
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v8);
  }
}

uint64_t sub_1BF028388(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v2[3];
  type metadata accessor for Observer(0, *(v4 + 80), v6, v7);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v8 = sub_1BF17A4EC();
  for (i = v8; i != sub_1BF17A5AC(); v8 = i)
  {
    v12 = sub_1BF17A58C();
    sub_1BF17A51C();
    if (v12)
    {
      v13 = *(v5 + 32 + 8 * v8);
    }

    else
    {
      v13 = sub_1BF17B23C();
    }

    sub_1BF17A62C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v14 = *(v13 + 24);

      v14(a1);
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v2[3] = sub_1BF17B31C();
}

uint64_t sub_1BF0285A4(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v34 = *(*v2 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v5);
  v30 = &v25 - v6;
  swift_beginAccess();
  v26 = v2;
  v7 = v2[4];
  v31 = TupleTypeMetadata2;
  v10 = type metadata accessor for Observer(0, TupleTypeMetadata2, v8, v9);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v11 = sub_1BF17A4EC();
  v36 = v11;
  if (v11 != sub_1BF17A5AC())
  {
    v35 = v7 + 32;
    v27 = (v4 + 8);
    v28 = v34 - 8;
    v29 = v10;
    v16 = v34;
    do
    {
      v17 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v17)
      {
        v18 = *(v35 + 8 * v11);
      }

      else
      {
        v18 = sub_1BF17B23C();
      }

      sub_1BF17A62C();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v19 = *(v18 + 24);
        v21 = v30;
        v20 = v31;
        v22 = *(v31 + 48);
        v23 = *(*(v16 - 8) + 16);
        v23(v30, v32, v16);
        v23(&v21[v22], v33, v16);
        v19(v21);
        (*v27)(v21, v20);
      }

      v24 = sub_1BF17A5AC();
      v11 = v36;
    }

    while (v36 != v24);
  }

  v13 = v26;
  v36 = v26[4];
  MEMORY[0x1EEE9AC00](v12, v14);
  *(&v25 - 2) = v34;
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v13[4] = sub_1BF17B31C();
}

void BackgroundFetchManager.add(worker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53();
  a31 = v32;
  a32 = v33;
  v35 = v34;
  v64 = v36;
  v63 = type metadata accessor for DisposableWorker();
  v37 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v39 = swift_unknownObjectRetain();
  v40 = sub_1BF026F1C(v39, v37, ObjectType, v35);
  v41 = *(v31 + OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers);

  os_unfair_lock_lock((v41 + 24));
  v62 = v40;
  sub_1BF026F94((v41 + 16));
  os_unfair_lock_unlock((v41 + 24));

  v42 = (*(v35 + 8))(ObjectType, v35);
  v43 = 0;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v42 + 56;
  v47 = v45 & *(v42 + 56);
  v48 = (v44 + 63) >> 6;
  if (v47)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v49 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v49 >= v48)
    {

      v64[3] = v63;
      v64[4] = &off_1F3DC1490;
      *v64 = v62;
      OUTLINED_FUNCTION_52_4();
      return;
    }

    v47 = *(v46 + 8 * v49);
    ++v43;
    if (v47)
    {
      v43 = v49;
      do
      {
LABEL_9:
        v47 &= v47 - 1;
        OUTLINED_FUNCTION_38_2();
        v51 = v50[1];
        v52 = v50[2];
        v53 = v50[3];
        v54 = v50[4];
        *&a15 = *v50;
        *(&a15 + 1) = v51;
        a17 = v52;
        a18 = v53;
        a19 = v54;
        v55 = OUTLINED_FUNCTION_36_2();
        sub_1BF027218(v55, v56, v57, v58, v59);
        sub_1BF02AFEC(&a15);
        v60 = OUTLINED_FUNCTION_36_2();
        sub_1BF03794C(v60, v61);
      }

      while (v47);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1BF028A88(void *a1, uint64_t a2)
{

  MEMORY[0x1BFB52290](v3);
  sub_1BF005F5C(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1BF17A59C();
}

uint64_t sub_1BF028B1C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v36 = *a1;
  v37 = *(a1 + 8);
  v34 = *(a1 + 24);
  sub_1BF17BB6C();
  if (v37 > 2)
  {
    sub_1BF179F3C();
  }

  sub_1BF179F3C();
  v5 = sub_1BF17BB9C();
  v13 = -1 << *(a2 + 32);
  v14 = v5 & ~v13;
  if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = (*(a2 + 48) + 40 * v14);
    v18 = *v16;
    v17 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v21 = v16[4];
    v38[0] = *v16;
    v38[1] = v17;
    v38[2] = v20;
    v38[3] = v19;
    v38[4] = v21;
    v38[5] = v36;
    v39 = v37;
    v40 = v34;
    switch(v17)
    {
      case 0:
        if (!*(a1 + 8))
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      case 1:
        if (*(a1 + 8) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      case 2:
        if (*(a1 + 8) == 2)
        {
          goto LABEL_30;
        }

LABEL_16:
        OUTLINED_FUNCTION_2_33(v5, v6, v7, v8, v9, v10, v11, v12, v32, v33, v34, *(&v34 + 1), v35, v36, v37, *(&v37 + 1));
LABEL_17:
        v5 = sub_1BF0379BC(v38);
        goto LABEL_18;
    }

    v22 = *(a1 + 8);
    if (v22 < 3)
    {
      OUTLINED_FUNCTION_2_33(v5, v6, v7, v22, v9, v10, v11, v12, v32, v33, v34, *(&v34 + 1), v35, v36, v37, *(&v37 + 1));
      OUTLINED_FUNCTION_0_52();
      goto LABEL_17;
    }

    if (v18 == *a1 && v17 == v22)
    {
      break;
    }

    v24 = sub_1BF17B86C();
    HIDWORD(v33) = v24;
    OUTLINED_FUNCTION_2_33(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37, *(&v37 + 1));
    OUTLINED_FUNCTION_0_52();
    v5 = sub_1BF0379BC(v38);
    if ((v33 & 0x100000000) != 0)
    {
      return 1;
    }

LABEL_18:
    v14 = (v14 + 1) & v15;
    if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2_33(v5, v6, *a1, v22, v9, v10, v11, v12, v32, v33, v34, *(&v34 + 1), v35, v36, v37, *(&v37 + 1));
  OUTLINED_FUNCTION_0_52();
LABEL_30:
  sub_1BF0379BC(v38);
  return 1;
}

void static BackgroundFetchTrigger.== infix(_:_:)()
{
  OUTLINED_FUNCTION_53();
  v5 = *v0;
  v4 = v0[1];
  v6 = v1[1];
  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        if (v6 == 2)
        {
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      if (v6 < 3)
      {
        v12 = OUTLINED_FUNCTION_11_17();
        sub_1BF027218(v12, v13, v14, v15, v16);
        v7 = OUTLINED_FUNCTION_9_24();
        goto LABEL_12;
      }

      if (v5 != *v1 || v4 != v6)
      {
        sub_1BF17B86C();
        v22 = OUTLINED_FUNCTION_11_17();
        sub_1BF027218(v22, v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_9_24();
        sub_1BF027218(v27, v28, v29, v30, v31);
        OUTLINED_FUNCTION_4_27(v32, v33, v34, v35);
        goto LABEL_20;
      }

      sub_1BF027218(v5, v4, v1[2], v1[3], v1[4]);
      v36 = OUTLINED_FUNCTION_9_24();
      sub_1BF027218(v36, v37, v38, v39, v40);
LABEL_19:
      OUTLINED_FUNCTION_4_27(v0, v1, v2, v3);
      goto LABEL_20;
    }

    if (v6 == 1)
    {
      goto LABEL_19;
    }
  }

  else if (!v6)
  {
    goto LABEL_19;
  }

LABEL_9:
  v7 = OUTLINED_FUNCTION_11_17();
LABEL_12:
  sub_1BF027218(v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_4_27(v17, v18, v19, v20);
LABEL_20:
  OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1BF028EE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BF028F38()
{
  if (!qword_1ED8EB490)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EB490);
    }
  }
}

uint64_t sub_1BF028F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF0370D4();
    v3 = sub_1BF037CBC();
    sub_1BF038278(v3, 1);
  }

  return result;
}

uint64_t sub_1BF02901C()
{
  sub_1BEFFA414();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF029048(uint64_t a1, __int128 *a2)
{
  v30 = a2[1];
  v31 = *a2;
  v29 = *(a2 + 4);
  v32 = *v2;
  sub_1BF17BB6C();
  v27 = v2;
  v28 = a1;
  if (*(&v31 + 1) > 2uLL)
  {
    sub_1BF179F3C();
  }

  sub_1BF179F3C();
  sub_1BF17BB9C();
  OUTLINED_FUNCTION_14_27();
  v7 = v6 & ~v5;
  if (((*(v32 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_25:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *v27;
    sub_1BF02832C(a2, v34);
    sub_1BF036D70(a2, v7, isUniquelyReferenced_nonNull_native);
    *v27 = v33[0];
    v19 = a2[1];
    *v28 = *a2;
    *(v28 + 16) = v19;
    *(v28 + 32) = *(a2 + 4);
    return 1;
  }

  v8 = ~v5;
  while (1)
  {
    OUTLINED_FUNCTION_39_5();
    v11 = *v9;
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = v9[4];
    v34[0] = *v9;
    v34[1] = v10;
    v34[2] = v13;
    v34[3] = v12;
    v34[4] = v14;
    v35 = v31;
    v36 = v30;
    v37 = v29;
    switch(v10)
    {
      case 0:
        if (!*(a2 + 1))
        {
          goto LABEL_27;
        }

        goto LABEL_13;
      case 1:
        if (*(a2 + 1) == 1)
        {
          goto LABEL_27;
        }

        goto LABEL_13;
      case 2:
        if (*(a2 + 1) == 2)
        {
          goto LABEL_27;
        }

LABEL_13:
        sub_1BF02832C(a2, v33);
LABEL_14:
        sub_1BF0379BC(v34);
        goto LABEL_15;
    }

    v15 = *(a2 + 1);
    if (v15 < 3)
    {
      sub_1BF02832C(a2, v33);
      OUTLINED_FUNCTION_26_13();
      goto LABEL_14;
    }

    if (v11 == *a2 && v10 == v15)
    {
      break;
    }

    v17 = sub_1BF17B86C();
    sub_1BF02832C(a2, v33);
    OUTLINED_FUNCTION_26_13();
    sub_1BF0379BC(v34);
    if (v17)
    {
      sub_1BF0282E0(a2);
      goto LABEL_28;
    }

LABEL_15:
    v7 = (v7 + 1) & v8;
    if (((*(v32 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_27:
  sub_1BF0379BC(v34);
LABEL_28:
  OUTLINED_FUNCTION_39_5();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = v21[4];
  *v28 = *v21;
  *(v28 + 8) = v23;
  *(v28 + 16) = v24;
  *(v28 + 24) = v25;
  *(v28 + 32) = v26;
  sub_1BF027218(v22, v23, v24, v25, v26);
  return 0;
}

unint64_t OUTLINED_FUNCTION_71(uint64_t a1, uint64_t a2)
{

  return sub_1BF01A7AC(a1, a2, (v2 - 160));
}

void *LRUCache.init(maxSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v4[3] = 0;
  v7 = v6[10];
  v8 = type metadata accessor for LRUCacheNode(255, v7, v6[11], a4);
  type metadata accessor for DoublyLinkedList(0, v8, v9, v10);
  v4[5] = DoublyLinkedList.__allocating_init()();
  v4[2] = a1;
  v13 = type metadata accessor for Node(0, v8, v11, v12);
  v4[4] = MEMORY[0x1BFB51B60](a1, v7, v13, v6[12]);
  return v4;
}

uint64_t sub_1BF02945C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
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

uint64_t DoublyLinkedList.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF029578(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF029620()
{
  result = qword_1ED8EF868;
  if (!qword_1ED8EF868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EF868);
  }

  return result;
}

id sub_1BF0296F0@<X0>(uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[4];
  v5 = *v2 >> 61;
  if (v5 == 1)
  {
    v7 = v2[5];
    v9 = v2[1];
    v8 = v2[2];
    v10 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a2[3] = &type metadata for JSONUnkeyedDecodingContainer;
    v11 = *(v2 + 24);
    a2[4] = sub_1BF029920();
    v12 = swift_allocObject();
    *a2 = v12;
    *(v12 + 56) = v4;
    *(v12 + 64) = 0;
    *(v12 + 16) = v10;
    *(v12 + 24) = v7;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
    *(v12 + 48) = v11;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return sub_1BF01730C(v9, v8, v11);
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    v15 = 0xE600000000000000;
    v16 = 0x7463656A626FLL;
    switch(v5)
    {
      case 1uLL:
        v15 = 0xE500000000000000;
        v16 = 0x7961727261;
        break;
      case 2uLL:
        v16 = 0x676E69727473;
        break;
      case 3uLL:
        v16 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v15 = 0xE400000000000000;
        v16 = 1702195828;
        v17 = 0xE500000000000000;
        v18 = 0x65736C6166;
        if (v3 != 0x8000000000000008)
        {
          v18 = 1819047278;
          v17 = 0xE400000000000000;
        }

        if (v3 != 0x8000000000000000)
        {
          v16 = v18;
          v15 = v17;
        }

        break;
      default:
        break;
    }

    *v14 = v4;
    *(v14 + 8) = v16;
    *(v14 + 16) = v15;
    *(v14 + 80) = 2;
    swift_willThrow();
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF0298CC()
{

  sub_1BF00A8F8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1BF029920()
{
  result = qword_1ED8EF460;
  if (!qword_1ED8EF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF460);
  }

  return result;
}

void sub_1BF0299A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v99 = a4;
  v100 = a1;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v96 = &v81 - v8;
  v102 = sub_1BF17923C();
  v95 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v81 - v14;
  v16 = sub_1BF1794AC();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BF17AE6C();
  v97 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v81 - v22;
  v101 = a2;
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v103;
  sub_1BF02A3D8(&v104);
  if (v29)
  {
    return;
  }

  v86 = v19;
  v92 = v16;
  v82 = v15;
  v83 = v11;
  v93 = 0;
  v30 = v102;
  v84 = v28;
  v85 = v24;
  v88 = v20;
  v31 = v104;
  v32 = *(v4 + 40);
  sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  v34 = *(v4 + 48);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
    return;
  }

  v37 = v4;
  v38 = inited;
  v87 = v23;
  v104 = v36;
  v39 = v36;
  sub_1BF01716C(v31);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v46 = sub_1BF17B6FC();
  v41 = v40;
  v38[7] = &type metadata for _JSONKey;
  v38[8] = sub_1BF02A58C();
  v42 = swift_allocObject();
  v38[4] = v42;
  *(v42 + 16) = v46;
  *(v42 + 24) = v41;
  v89 = v39;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  v104 = v32;
  sub_1BF02967C(v38);
  v91 = v104;
  v44 = *(v37 + 8);
  v43 = *(v37 + 16);
  v45 = *(v37 + 24);
  LODWORD(v46) = *(v37 + 32);
  v103 = v45;
  v94 = v43;
  if (v92 == v100)
  {
    v104 = v43;
    v105 = v45;
    v106 = v46;
    v109 = v31;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v43, v45, v46);
    v55 = v93;
    sub_1BF051984(&v109, MEMORY[0x1E69E7CC0], v44, v86);
    v47 = v101;
    v56 = v91;
    if (v55)
    {
      goto LABEL_31;
    }

    v93 = 0;
    v90 = v44;
    v100 = v37;
    v57 = v87;
    if (swift_dynamicCast())
    {
      v58 = v57;
      v59 = 0;
    }

    else
    {
      v58 = v57;
      v59 = 1;
    }

    __swift_storeEnumTagSinglePayload(v58, v59, 1, v47);
LABEL_27:
    v67 = v103;
    v68 = v88;
    v76 = v85;
    if (__swift_getEnumTagSinglePayload(v57, 1, v47) != 1)
    {
      sub_1BF017214(v31);
      sub_1BF017214(v31);
      sub_1BF00A8F8(v94, v67, v46);

      v79 = *(v76 + 32);
      v80 = v84;
      v79(v84, v57, v47);
      v79(v99, v80, v47);
      return;
    }

    v66 = v94;
    v65 = v90;
    goto LABEL_29;
  }

  v92 = v32;
  v90 = v44;
  v47 = v101;
  if (v30 != v100)
  {
    if (v100 != MEMORY[0x1E6969080] || (v31 & 0xE000000000000000) != 0x4000000000000000)
    {
      goto LABEL_18;
    }

    v49 = v37;
    v50 = v46;
    v46 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v51 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    LODWORD(v86) = v50;
    sub_1BF01730C(v94, v103, v50);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v52 = sub_1BF1792BC();
    if (v53 >> 60 == 15)
    {
      sub_1BF05350C();
      swift_allocError();
      *v54 = v92;
      *(v54 + 8) = v46;
      *(v54 + 16) = v51;
      *(v54 + 80) = 6;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      LOBYTE(v46) = v86;
LABEL_31:
      *(v37 + 48) = v89;
      swift_willThrow();
      sub_1BF017214(v31);
      sub_1BF00A8F8(v94, v103, v46);

      sub_1BF017214(v31);
      return;
    }

    v69 = v52;
    v70 = v53;

    v104 = v69;
    v105 = v70;
    v57 = v87;
    v71 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v57, v71 ^ 1u, 1, v47);
    v100 = v49;
    goto LABEL_26;
  }

  if (v31 >> 61 == 2)
  {
    v60 = v30;
    v100 = v37;
    v61 = v46;
    v46 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v62 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    LODWORD(v86) = v61;
    sub_1BF01730C(v94, v103, v61);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v63 = v96;
    sub_1BF1791FC();
    if (__swift_getEnumTagSinglePayload(v63, 1, v60) == 1)
    {
      sub_1BF0F698C(v63);
      sub_1BF05350C();
      swift_allocError();
      *v64 = v92;
      *(v64 + 8) = v46;
      *(v64 + 16) = v62;
      *(v64 + 80) = 9;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      LOBYTE(v46) = v86;
LABEL_30:
      v37 = v100;
      goto LABEL_31;
    }

    v72 = *(v95 + 32);
    v73 = v82;
    v72(v82, v63, v60);
    v72(v83, v73, v60);
    v57 = v87;
    if (swift_dynamicCast())
    {
      v74 = v57;
      v75 = 0;
    }

    else
    {
      v74 = v57;
      v75 = 1;
    }

    __swift_storeEnumTagSinglePayload(v74, v75, 1, v47);
LABEL_26:
    v56 = v91;
    LOBYTE(v46) = v86;
    goto LABEL_27;
  }

LABEL_18:
  v100 = v37;
  v57 = v87;
  __swift_storeEnumTagSinglePayload(v87, 1, 1, v101);
  v65 = v90;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v66 = v94;
  v67 = v103;
  sub_1BF01730C(v94, v103, v46);
  v56 = v91;
  v68 = v88;
LABEL_29:
  (*(v97 + 8))(v57, v68);
  v107 = &type metadata for _JSONDecoder;
  v108 = sub_1BF0172B8();
  v77 = swift_allocObject();
  v104 = v77;
  *(v77 + 16) = v31;
  *(v77 + 24) = v66;
  *(v77 + 32) = v67;
  *(v77 + 40) = v46;
  *(v77 + 48) = v56;
  *(v77 + 56) = v65;
  sub_1BF01716C(v31);
  sub_1BF01730C(v66, v67, v46);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v78 = v93;
  sub_1BF17A8BC();
  if (v78)
  {
    goto LABEL_30;
  }

  sub_1BF017214(v31);
  sub_1BF00A8F8(v66, v67, v46);

  sub_1BF017214(v31);
}

void sub_1BF02A3D8(unint64_t *a2@<X8>)
{
  v3 = v2[6];
  if (v3 >= *(*v2 + 16))
  {
    sub_1BF05350C();
    swift_allocError();
    v6 = v5;
    v7 = v2[5];
    sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v9 = sub_1BF17B6FC();
    v11 = v10;
    *(inited + 56) = &type metadata for _JSONKey;
    *(inited + 64) = sub_1BF02A58C();
    v12 = swift_allocObject();
    *(inited + 32) = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v12 + 32) = v3;
    *(v12 + 40) = 0;
    sub_1BF02967C(inited);
    *v6 = v7;
    *(v6 + 80) = 0;
    swift_willThrow();
  }

  else if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v2 + 8 * v3 + 32);
    v2[6] = v3 + 1;
    *a2 = v4;
    sub_1BF01716C(v4);
  }
}

uint64_t sub_1BF02A554()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_1BF02A58C()
{
  result = qword_1ED8EF3C0;
  if (!qword_1ED8EF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF3C0);
  }

  return result;
}

unint64_t sub_1BF02A5E0()
{
  result = qword_1ED8EF3C8;
  if (!qword_1ED8EF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF3C8);
  }

  return result;
}

unint64_t sub_1BF02A638()
{
  result = qword_1ED8EF3D0;
  if (!qword_1ED8EF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF3D0);
  }

  return result;
}

uint64_t sub_1BF02A6A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  a1[3] = &type metadata for JSONSingleValueDecodingContainer;
  v8 = *(v1 + 24);
  a1[4] = sub_1BF02A7A4();
  v9 = swift_allocObject();
  *a1 = v9;
  *(v9 + 56) = v6;
  *(v9 + 16) = v3;
  *(v9 + 24) = v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v8;
  sub_1BF01716C(v3);
  sub_1BF01730C(v4, v5, v8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF02A758()
{
  sub_1BF017214(*(v0 + 16));

  sub_1BF00A8F8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1BF02A7A4()
{
  result = qword_1ED8EF7C0;
  if (!qword_1ED8EF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF7C0);
  }

  return result;
}

uint64_t sub_1BF02A7F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 == 2)
  {
    v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v5 = v1[5];
    sub_1BF05350C();
    v6 = swift_allocError();
    v8 = 0xE600000000000000;
    v9 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v8 = 0xE500000000000000;
        v9 = 0x7961727261;
        break;
      case 2uLL:
        v9 = 0x676E69727473;
        break;
      case 3uLL:
        v9 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v8 = 0xE400000000000000;
        v9 = 1702195828;
        v10 = 0xE500000000000000;
        v11 = 0x65736C6166;
        if (v2 != 0x8000000000000008)
        {
          v11 = 1819047278;
          v10 = 0xE400000000000000;
        }

        if (v2 != 0x8000000000000000)
        {
          v9 = v11;
          v8 = v10;
        }

        break;
      default:
        break;
    }

    *v7 = v5;
    *(v7 + 8) = 0x676E69727473;
    *(v7 + 16) = 0xE600000000000000;
    *(v7 + 24) = v9;
    *(v7 + 32) = v8;
    *(v7 + 80) = 10;
    v4 = v6;
    swift_willThrow();
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v4;
}

uint64_t _TeaJSONDecoder.deinit()
{

  sub_1BF00A8F8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_1BEFE52DC(*(v0 + 48), *(v0 + 56));
  return v0;
}

void += infix<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v71 = v0;
  v72 = v1;
  v3 = v2;
  v82 = v4;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_25_7(v0, v5, v4, v2);
  v8 = OUTLINED_FUNCTION_68(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v70 = v61 - v10;
  OUTLINED_FUNCTION_2_3();
  v66 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v68 = v15 - v14;
  OUTLINED_FUNCTION_2_3();
  v65 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v81 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_1_16();
  v80 = v27;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_10_21();
  v77 = v30;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v31 = sub_1BF17B47C();
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v79 = v31 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    v32 = v6 + 64;
    OUTLINED_FUNCTION_18_0();
    v34 = v35 & v36;
    v79 = v6;
  }

  v37 = (v65 + 32);
  v38 = (v66 + 32);
  v61[1] = v33;
  v39 = (v33 + 64) >> 6;
  v63 = v66 + 16;
  v64 = v65 + 16;
  v74 = (v24 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v40 = 0;
  v69 = v21;
  v67 = TupleTypeMetadata2;
  v76 = v32;
  v41 = v34;
  v62 = v37;
  while (1)
  {
    v75 = v41;
    v73 = v40;
    if ((v79 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1BF17B48C())
    {
      sub_1BF17B82C();
      swift_unknownObjectRelease();
      v50 = v81;
      v51 = v68;
      sub_1BF17B82C();
      swift_unknownObjectRelease();
      v42 = v40;
      v37 = v62;
      v34 = v41;
      goto LABEL_14;
    }

    v53 = 1;
    v34 = v41;
    v43 = v40;
    v44 = v80;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v44, v53, 1, TupleTypeMetadata2);
    v54 = v77;
    (*v74)(v77, v44, v78);
    if (__swift_getEnumTagSinglePayload(v54, 1, TupleTypeMetadata2) == 1)
    {
      sub_1BF003FE8(v79);
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v55 = *(TupleTypeMetadata2 + 48);
    v21 = v69;
    (*v37)(v69, v54, v82);
    v56 = v54 + v55;
    v57 = v81;
    (*v38)(v70, v56, v81);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
    sub_1BF179E9C();
    sub_1BF179EBC();
    v40 = v43;
    v41 = v34;
    v32 = v76;
  }

  v42 = v40;
  if (v41)
  {
LABEL_11:
    OUTLINED_FUNCTION_21_8();
    v46 = v45 | (v42 << 6);
    v48 = v47;
    (*(v65 + 16))(v21, *(v47 + 48) + *(v65 + 72) * v46, v82);
    v49 = *(v48 + 56) + *(v66 + 72) * v46;
    v50 = v81;
    v51 = v68;
    (*(v66 + 16))(v68, v49, v81);
LABEL_14:
    v52 = *(v67 + 48);
    TupleTypeMetadata2 = v67;
    v44 = v80;
    (*v37)();
    (*v38)((v44 + v52), v51, v50);
    v53 = 0;
    v43 = v42;
    goto LABEL_15;
  }

  v43 = v40;
  v44 = v80;
  while (1)
  {
    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v42 >= v39)
    {
      v34 = 0;
      v53 = 1;
      goto LABEL_15;
    }

    ++v43;
    if (*(v32 + 8 * v42))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1BF02AEA8(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BF179D5C();

  return v3;
}

void *sub_1BF02AF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  v3[4] = 0;
  v3[5] = v8;
  v13 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3[6] = UnfairLock.init(options:)(&v13);
  v3[2] = a2;
  v3[3] = a3;
  v9 = qword_1ED8F01C8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = byte_1ED8F52C8;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  v4[7] = v11;
  return v4;
}

void sub_1BF02AFEC(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v47 = *a1;
  v48 = v3;
  v49 = *(a1 + 4);
  v4 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_configuredTriggers;
  swift_beginAccess();
  v5 = *&v1[v4];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF028B1C(&v47, v5);

  if (v6)
  {
    return;
  }

  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF1797FC();
  __swift_project_value_buffer(v7, qword_1ED8F5248);
  sub_1BF02832C(&v47, &aBlock);
  v8 = sub_1BF1797DC();
  v9 = sub_1BF17ACDC();
  sub_1BF0282E0(&v47);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40[0] = v11;
    *v10 = 136446210;
    if (*(&v47 + 1))
    {
      if (*(&v47 + 1) == 2)
      {
        v12 = 1802661719;
      }

      else
      {
        if (*(&v47 + 1) != 1)
        {
          aBlock = 0x656C756465686353;
          v42 = 0xEB00000000203A64;
          MEMORY[0x1BFB52000](v47);
          v14 = aBlock;
          v13 = v42;
          goto LABEL_13;
        }

        v12 = 1701670728;
      }

      v13 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      v14 = 0x20676E697661654CLL;
    }

    else
    {
      v13 = 0xEB00000000687365;
      v14 = 0x7266655220707041;
    }

LABEL_13:
    v15 = sub_1BF01A7AC(v14, v13, v40);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1BEFE0000, v8, v9, "configuring trigger: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB547B0](v11, -1, -1);
    MEMORY[0x1BFB547B0](v10, -1, -1);
  }

  v16 = *(&v47 + 1);
  switch(*(&v47 + 1))
  {
    case 0:
LABEL_20:
      swift_beginAccess();
      sub_1BF02832C(&v47, &aBlock);
      sub_1BF029048(&aBlock, &v47);
      swift_endAccess();
      sub_1BF03794C(aBlock, v42);
      return;
    case 2:
      v17 = [objc_opt_self() defaultManager];
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      v45 = sub_1BF103164;
      v46 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_1BF0FF4CC;
      v44 = &block_descriptor_40;
      v19 = _Block_copy(&aBlock);
      v22 = v2;

      [v17 fetchLocationsOfInterestOfType:1 withHandler:v19];
      goto LABEL_19;
    case 1:
      v17 = [objc_opt_self() defaultManager];
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      v45 = sub_1BF103198;
      v46 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_1BF0FF4CC;
      v44 = &block_descriptor_46;
      v19 = _Block_copy(&aBlock);
      v20 = v2;

      [v17 fetchLocationsOfInterestOfType:0 withHandler:v19];
LABEL_19:
      _Block_release(v19);

      goto LABEL_20;
  }

  v23 = v47;
  v24 = v48;
  v25 = v49;
  v26 = [objc_opt_self() sharedScheduler];
  v27 = sub_1BF17A07C();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v30 = v48;
  *(v29 + 24) = v47;
  *(v29 + 16) = v28;
  *(v29 + 40) = v30;
  *(v29 + 56) = v49;
  *(v29 + 64) = v23;
  *(v29 + 72) = v16;
  *(v29 + 80) = v24;
  *(v29 + 96) = v25;
  v45 = sub_1BF10314C;
  v46 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BF10034C;
  v44 = &block_descriptor_34;
  v31 = _Block_copy(&aBlock);
  sub_1BF02832C(&v47, v40);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v32 = [v26 registerForTaskWithIdentifier:v27 usingQueue:0 launchHandler:v31];
  _Block_release(v31);

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v33 = sub_1BF1797DC();
  if (v32)
  {
    v34 = sub_1BF17ACDC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1BF01A7AC(v23, v16, &aBlock);
      _os_log_impl(&dword_1BEFE0000, v33, v34, "registered task handler for %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1BFB547B0](v36, -1, -1);
      MEMORY[0x1BFB547B0](v35, -1, -1);
    }

    aBlock = v24;
    sub_1BF037B48(v23, v16, &aBlock, *(&v24 + 1), v25);
    goto LABEL_20;
  }

  v37 = sub_1BF17ACBC();

  if (os_log_type_enabled(v33, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_1BF01A7AC(v23, v16, &aBlock);
    _os_log_impl(&dword_1BEFE0000, v33, v37, "failed to register task handler for %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1BFB547B0](v39, -1, -1);
    MEMORY[0x1BFB547B0](v38, -1, -1);
  }
}

uint64_t sub_1BF02B734()
{
  MEMORY[0x1BFB548B0](v0 + 16);
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF02B764()
{

  if (*(v0 + 32) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1BF02B7C4()
{
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF02B7F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF035EB4;

  return v6(a1);
}

uint64_t _TeaJSONDecoder.__deallocating_deinit()
{
  _TeaJSONDecoder.deinit();
  v0 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF02BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v5();

  return v4;
}

uint64_t sub_1BF02BAA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *a2;
  v10 = *(*v4 + 80);
  sub_1BF00CCEC(v10, v10);
  v11 = *(v10 - 8);
  swift_allocObject();
  v12 = sub_1BF17A50C();
  (*(v11 + 16))(v13, a1, v10);
  sub_1BF00CD7C(v12, v10);
  v15 = v14;
  if (sub_1BF17A5AC())
  {
    v16 = sub_1BF02C7D0(v15, v10, *(v8 + 88));
  }

  else
  {

    v16 = MEMORY[0x1E69E7CD0];
  }

  v18 = v9;
  sub_1BEFFAB94(v16, &v18, a3, a4);
}

uint64_t TaskScheduler.schedule(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_26();
  v2 = sub_1BF179B5C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_1BF179BBC();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  if ([objc_opt_self() isMainThread])
  {
    sub_1BF179BAC();
    OUTLINED_FUNCTION_7_28();
    v32 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v33 = v18;
    v34 = &block_descriptor_3_1;
    _Block_copy(aBlock);
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v19, v20, MEMORY[0x1E69E7F70]);
    v21 = OUTLINED_FUNCTION_10_26();
    sub_1BF027D54(v21);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v22, v23, MEMORY[0x1E69E6328]);

    sub_1BF17B0BC();
    sub_1BF179C4C();
    swift_allocObject();
    sub_1BF179C1C();

    sub_1BF17AD8C();
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    v32 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v33 = v24;
    v34 = &block_descriptor_14;
    v25 = _Block_copy(aBlock);

    sub_1BF179B8C();
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v26, v27, MEMORY[0x1E69E7F70]);
    sub_1BF027D54(0);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v28, v29, MEMORY[0x1E69E6328]);
    sub_1BF17B0BC();
    MEMORY[0x1BFB52B50](0, v17, v9, v25);
    _Block_release(v25);
    (*(v4 + 8))(v9, v2);
    (*(v12 + 8))(v17, v10);
  }
}

void Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v68 = v6;
  v65 = OUTLINED_FUNCTION_25_7(v7, v6, v4, v2);
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_1_16();
  v64 = v12;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_10_21();
  v66 = v15;
  OUTLINED_FUNCTION_2_3();
  v67 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_2_0();
  v63 = v20 - v19;
  OUTLINED_FUNCTION_2_3();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v62 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v56 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v56 - v33;
  v69 = v1;
  v73 = sub_1BF179CEC();
  OUTLINED_FUNCTION_80_1();
  v35 = sub_1BF17A4EC();
  v72 = v35;
  OUTLINED_FUNCTION_80_1();
  if (v35 == sub_1BF17A5AC())
  {
LABEL_12:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v70 = (v22 + 16);
  v36 = v9;
  v37 = (v22 + 32);
  v38 = v66;
  v59 = (v67 + 16);
  v60 = (v67 + 32);
  v58 = (v67 + 8);
  v67 = v22 + 8;
  v56 = v24;
  v57 = (v36 + 8);
  v61 = v22;
  while (1)
  {
    OUTLINED_FUNCTION_80_1();
    v39 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v39 & 1) == 0)
    {
      break;
    }

    v40 = *(v22 + 16);
    v41 = OUTLINED_FUNCTION_16_9();
    (v40)(v41);
LABEL_5:
    sub_1BF17A62C();
    (*v37)(v30, v34, v5);
    sub_1BF179EAC();
    if (__swift_getEnumTagSinglePayload(v38, 1, v3) == 1)
    {
      v42 = OUTLINED_FUNCTION_17_2();
      v43(v42);
      (*v57)(v38, v65);
    }

    else
    {
      v44 = v37;
      v45 = v34;
      v46 = v63;
      (*v60)(v63, v38, v3);
      OUTLINED_FUNCTION_17_7();
      v40();
      (*v59)(v64, v46, v3);
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v3);
      sub_1BF179E9C();
      v38 = v66;
      sub_1BF179EBC();
      v50 = v46;
      v34 = v45;
      v37 = v44;
      v22 = v61;
      (*v58)(v50, v3);
      v51 = OUTLINED_FUNCTION_17_2();
      v53(v51, v52);
    }

    OUTLINED_FUNCTION_80_1();
    if (v72 == sub_1BF17A5AC())
    {
      goto LABEL_12;
    }
  }

  v54 = sub_1BF17B23C();
  if (v56 == 8)
  {
    v71 = v54;
    v40 = *v70;
    v55 = OUTLINED_FUNCTION_16_9();
    (v40)(v55);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1BF02C41C()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v8 = OUTLINED_FUNCTION_5_2(v6, v7);
  sub_1BF02CF24(v8, v9, v10);
  OUTLINED_FUNCTION_1_5();
  if (v12)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v13 = v11;
  sub_1BEFE9FF8(0, &qword_1ED8EADF0, sub_1BF02D204, sub_1BEFF4080, &type metadata for StartupTaskManager.DeferredTasksByGroupKey);
  v15 = OUTLINED_FUNCTION_14_4(v14);
  if (v15)
  {
    v20 = OUTLINED_FUNCTION_31_3();
    sub_1BF02CF24(v20, v21, v3);
    OUTLINED_FUNCTION_11_2();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v13)
  {
    OUTLINED_FUNCTION_54_1(v15, v16, v17, v18, v19, *v0);
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_58_0();
    sub_1BF02D238(v25, v26, v5, v3, v1, v27);
    OUTLINED_FUNCTION_26_2();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF02C548(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_75();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static StartupTaskGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

uint64_t RemoteNotificationManager.add(handler:for:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = a3[1];
  v19[0] = *a3;
  v19[1] = v8;
  v9 = type metadata accessor for DisposableHandler();
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v10 = swift_unknownObjectRetain();
  v11 = sub_1BF02D2AC(v10, a2, v19);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v12);
  sub_1BF005F5C(*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v5 + 24);
  v14 = *(v13 + 16);
  if (v14)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v15 = v13 + 40;
    do
    {
      v16 = *(v15 - 8);

      v16(v17);

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  *(v5 + 24) = MEMORY[0x1E69E7CC0];

  a4[3] = v9;
  a4[4] = &off_1F3DBCF10;
  *a4 = v11;
  return result;
}

void *sub_1BF02C768(void *result, int a2)
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

uint64_t sub_1BF02C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - v14;
  if (sub_1BF17A5AC())
  {
    sub_1BF17B19C();
    v16 = sub_1BF17B18C();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v38 = sub_1BF17A5AC();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v17 = 0;
    v43 = (v6 + 16);
    v44 = v16 + 56;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v15;
    while (1)
    {
      v18 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v18)
      {
        v19 = *(v6 + 16);
        result = (v19)(v15, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, a2);
      }

      else
      {
        v41 = v17;
        result = sub_1BF17B23C();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v19 = *v43;
        (*v43)(v15, &v46, a2);
        result = swift_unknownObjectRelease();
        v17 = v41;
      }

      v41 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v15, a2);
      v21 = sub_1BF179F1C();
      v22 = ~(-1 << *(v16 + 32));
      while (1)
      {
        v23 = v21 & v22;
        v24 = (v21 & v22) >> 6;
        v25 = *(v44 + 8 * v24);
        v26 = 1 << (v21 & v22);
        if ((v26 & v25) == 0)
        {
          break;
        }

        v27 = v16;
        v19(v8, (*(v16 + 48) + *(v6 + 72) * v23), a2);
        v28 = a3;
        v29 = sub_1BF17A05C();
        v30 = *(v6 + 8);
        v30(v8, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v28;
          v15 = v37;
          v16 = v27;
          v17 = v41;
          goto LABEL_16;
        }

        v21 = v23 + 1;
        a3 = v28;
        v16 = v27;
      }

      v31 = v45;
      *(v44 + 8 * v24) = v26 | v25;
      result = (v39)(*(v16 + 48) + *(v6 + 72) * v23, v31, a2);
      v32 = *(v16 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v15 = v37;
      v17 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      *(v16 + 16) = v34;
LABEL_16:
      v5 = v36;
      if (v17 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v16;
  }

  return result;
}

uint64_t sub_1BF02CB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69(&qword_1ED8EF148);
  }

  return a3(a1, a2);
}

void StartupTaskManager.onStartup(run:in:during:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_0();
  a27 = v29;
  a28 = v31;
  v32 = v28;
  v34 = v33;
  v36 = v35;
  v38 = *v37;
  if (*(v32 + v38 + 56))
  {
    v39 = sub_1BF17ACBC();
    OUTLINED_FUNCTION_8_5(v39, &qword_1ED8EE998);
    OUTLINED_FUNCTION_69();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BF17DEF0;
    a15 = 0;
    a16 = 0xE000000000000000;
    v41 = v36(&a10);
    OUTLINED_FUNCTION_126_0(v41, &unk_1ED8EDC40, &protocol descriptor for StartupTaskType);
    sub_1BF17B40C();
    __swift_destroy_boxed_opaque_existential_1(&a10);
    v42 = a15;
    v43 = a16;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1BF071CD8();
    *(v40 + 32) = v42;
    *(v40 + 40) = v43;
    sub_1BF071C2C();
    v44 = sub_1BF17AE3C();
    sub_1BF1797CC("Asked to run deferred task on startup who's executionPhase has already started %{public}@", 89, 2, &dword_1BEFE0000, v44, v39, v40);
  }

  else
  {
    v46 = *v30;
    v45 = v30[1];
    swift_beginAccess();
    v47 = *(v32 + 24);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v48 = sub_1BF02CED8(v46, v45, v38, v47);
    if (v48)
    {
      v49 = v48;
      swift_endAccess();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_45_2();
        sub_1BEFF9F4C();
        v49 = v56;
      }

      v51 = *(v49 + 16);
      if (v51 >= *(v49 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_2();
        sub_1BEFF9F4C();
        v49 = v57;
      }

      *(v49 + 16) = v51 + 1;
      v52 = v49 + 16 * v51;
      *(v52 + 32) = v36;
      *(v52 + 40) = v34;
      OUTLINED_FUNCTION_38(v32 + 24, v50);
    }

    else
    {
      swift_endAccess();
      OUTLINED_FUNCTION_46_2();
      sub_1BEFEEEE0(0, v53);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1BF17DEF0;
      *(v54 + 32) = v36;
      *(v54 + 40) = v34;
      OUTLINED_FUNCTION_38(v32 + 24, v55);
    }

    swift_isUniquelyReferenced_nonNull_native();
    a15 = *(v32 + 24);
    sub_1BF02C41C();
    *(v32 + 24) = a15;

    swift_endAccess();
  }

  OUTLINED_FUNCTION_94();
}

uint64_t sub_1BF02CED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v4 = sub_1BF02CF24(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v4);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

unint64_t sub_1BF02CF24(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_63();
  sub_1BF179F3C();
  sub_1BF179F3C();

  sub_1BF17BB9C();
  v4 = OUTLINED_FUNCTION_17_2();

  return sub_1BF02D020(v4, v5, a3, v6);
}

unint64_t sub_1BF02D020(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v11 = *(v10 + 16);
      v12 = *v10 == a1 && *(v10 + 8) == a2;
      if (v12 || (sub_1BF17B86C() & 1) != 0)
      {
        if (v11)
        {
          v13 = 0x75614C7265746661;
          v14 = 0xEE00676E6968636ELL;
          if (v11 == 1)
          {
            v13 = 0xD000000000000012;
            v14 = 0x80000001BF18C430;
          }
        }

        else
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001BF18C410;
        }

        if (a3)
        {
          if (a3 == 1)
          {
            v15 = 0xD000000000000012;
          }

          else
          {
            v15 = 0x75614C7265746661;
          }

          if (a3 == 1)
          {
            v16 = 0x80000001BF18C430;
          }

          else
          {
            v16 = 0xEE00676E6968636ELL;
          }
        }

        else
        {
          v15 = 0xD000000000000013;
          v16 = 0x80000001BF18C410;
        }

        if (v13 == v15 && v14 == v16)
        {

          return v6;
        }

        v18 = sub_1BF17B86C();

        if (v18)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_1BF02D238(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = OUTLINED_FUNCTION_3_14(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * v6;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v7[7] + 8 * v6) = v12;
  v13 = v7[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_16(v7, v15);
  }
}

void *sub_1BF02D2AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[3] = a2;
  swift_unknownObjectWeakAssign();
  v3[4] = v5;
  v3[5] = v6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t RemoteNotificationManager.whenActive(block:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (sub_1BEFE90AC(*(v3 + 16)))
  {
    return a1();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();

  sub_1BF071BB4();
  v8 = *(*(v3 + 24) + 16);
  sub_1BF071DF0(v8);
  v9 = *(v3 + 24);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_1BF006198;
  *(v10 + 40) = v7;
  *(v3 + 24) = v9;
  return swift_endAccess();
}

uint64_t sub_1BF02D414()
{

  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t asyncAfter(_:execute:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF00974C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a3;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;

  sub_1BF089AC0();
}

uint64_t sub_1BF02D538()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF02D578(void (*a1)(char *), uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  OUTLINED_FUNCTION_0();
  if ((*(v2 + *(v12 + 120)) & 1) != 0 && [objc_opt_self() isMainThread])
  {
    OUTLINED_FUNCTION_14_0();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = v2;
    v14 = qword_1ED8EF148;

    if (v14 != -1)
    {
      swift_once();
    }

    TaskScheduler.schedule(_:)(sub_1BF02D974, v13);
  }

  else
  {
    sub_1BF004F64(v11);
    a1(v11);
    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_1BF02D73C()
{

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF02D79C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BF17B3CC();
  v5 = sub_1BF02D92C(&qword_1ED8ECBB8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1BF17BABC();
  sub_1BF02D92C(&qword_1ED8EAE08, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1BF17B3DC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BF146700;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BF02D92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF02D980(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v9 - v6;
  sub_1BF004F64(&v9 - v6);
  a1(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BF02DA9C(void *a1)
{
  OUTLINED_FUNCTION_29();
  v6 = type metadata accessor for Seal.Resolution(0, *(v4 + 80), *(v4 + 80), v5);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v15 - v11);
  OUTLINED_FUNCTION_15_15();
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v13 = a1;
    sub_1BF006BE0();
    OUTLINED_FUNCTION_11_16();
    (*(v8 + 8))(v12, v6);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_31_1();
}

uint64_t ObservableProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_24_13();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_24_13();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t ObservableProperty.observeUntil(block:)(uint64_t a1, uint64_t a2)
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
    OUTLINED_FUNCTION_27();
    v14 = swift_allocObject();
    v15 = *(v6 + 80);
    type metadata accessor for ObservableProperty.Token(0, v15, v16, v17);
    *(v14 + 16) = sub_1BF02DF00();
    OUTLINED_FUNCTION_85();
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v14;
    v18[4] = a1;
    v18[5] = a2;
    OUTLINED_FUNCTION_9_29(v18);
    OUTLINED_FUNCTION_3_44();
    FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
    OUTLINED_FUNCTION_21_15(FunctionTypeMetadata1);

    OUTLINED_FUNCTION_20_17(v20);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF02DE78()
{

  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF02DF10()
{
  v1 = sub_1BF17BC9C();
  v3 = v2;
  sub_1BF17BADC();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1BF146334;

  return sub_1BF02E624(v1, v3, 0, 0, 1);
}

void sub_1BF02DFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Seal.Resolution(0, a5, a5, a4);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (&v20 - v13);
  (*(v10 + 16))(&v20 - v13, a1, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = v15;

    v17 = v15;
    v18 = sub_1BF006210(a2, sub_1BF02DBE0, v16);

    (v18)(v19);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    __break(1u);
  }
}

uint64_t DeferredPromise.reject(_:)(uint64_t a1)
{
  if (*(v1 + 24))
  {

    sub_1BF02E758();
  }

  *(v1 + 24) = 0;
}

uint64_t sub_1BF02E220()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_39_1();

    v2 = OUTLINED_FUNCTION_41_0();
    sub_1BF02E2A8(v2, v3);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF02E2A8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {

    v5 = a2(a1);

    v5(v6);
  }

  return result;
}

uint64_t sub_1BF02E334()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_49_0();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    *(v3 + 24) = 1;
    v7 = v1;
    v6 = v3;
    v2(v1, 1);
    OUTLINED_FUNCTION_126();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v6;
}

void (*OUTLINED_FUNCTION_118_0())()
{

  return sub_1BF006210(v2, v0, v1);
}

uint64_t sub_1BF02E4A8()
{
  v2 = v0[4];
  v4 = *(v0 + 5);
  v3 = *(v0 + 6);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_6(v5);

  return sub_1BF02E560(v2, v6, v7, v8, v4, v3);
}

uint64_t sub_1BF02E560(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = sub_1BF17B3CC();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF02DF10, 0, 0);
}

uint64_t sub_1BF02E624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BF17B3BC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BF02D79C, 0, 0);
}

uint64_t sub_1BF02E758()
{
  OUTLINED_FUNCTION_124();
  result = swift_weakLoadStrong();
  if (result)
  {

    v2 = sub_1BF02DA9C(v0);
    OUTLINED_FUNCTION_121();

    v2(v3);
  }

  return result;
}

void sub_1BF02E7EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = a1;
  UnfairLock.lock()();
  OUTLINED_FUNCTION_3_5(a3 + 16, v9);
  if ((*(a3 + 16) & 1) == 0)
  {
    OUTLINED_FUNCTION_125(a3 + 16, &v8);
    *(a3 + 16) = 1;
    sub_1BF02E220();
  }

  os_unfair_lock_unlock(*(a2 + 16));
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF02E910()
{
  v1 = *(v0 + 16);

  v1(v2);
}

uint64_t sub_1BF02E964@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v6 = a3;
    v7 = 1;
    return __swift_storeEnumTagSinglePayload(v6, v7, 1, a2);
  }

  v8 = result;
  if (*(*(a2 - 8) + 64) == 8)
  {
    (*(*(a2 - 8) + 16))(a3, &v8, a2);
    swift_unknownObjectRelease();
    v6 = a3;
    v7 = 0;
    return __swift_storeEnumTagSinglePayload(v6, v7, 1, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF02EA58()
{
  v1 = v0;
  v2 = v0[6];
  UnfairLock.lock()();
  swift_beginAccess();
  v3 = v0[4];
  if (v3)
  {
    v4 = *(v2 + 16);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = v1[7];
    if (v5 & 1) != 0 || (v5 & 2) == 0 || ([objc_opt_self() isMainThread])
    {
      return sub_1BF037424(1, v1);
    }

    else
    {
      sub_1BEFF6E88();
      v7 = sub_1BF17AD5C();
      sub_1BF026ECC(0, v8, v9, v10);
      sub_1BF17AD6C();

      os_unfair_lock_unlock(*(v2 + 16));
      return v11;
    }
  }

  return v3;
}

uint64_t - infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  return sub_1BF17A38C();
}

uint64_t sub_1BF02EBE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_34(a1, a2);
  toKey<A>(type:name:)();
  v2 = OUTLINED_FUNCTION_0_73();
  sub_1BF02EC84(v2, v3, v4);
}

uint64_t sub_1BF02EC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_2(v3 + 32, v10);
  OUTLINED_FUNCTION_3_42();
  sub_1BF00951C();
  swift_endAccess();

  type metadata accessor for WeakPoolObject(0, a3, v5, v6);
  v7 = swift_unknownObjectRetain();
  sub_1BF02EDBC(v7, a3);
  OUTLINED_FUNCTION_7_2(v3 + 24, v10);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 24);
  OUTLINED_FUNCTION_10_29();
  *(v3 + 24) = v9;
  return swift_endAccess();
}

uint64_t sub_1BF02EDBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  v4 = swift_allocObject();
  sub_1BF02EE04(a1, a2);
  return v4;
}

uint64_t *sub_1BF02EE04(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v6 = swift_allocObject();
  v6[2] = *(v4 + 104);
  v6[3] = a2;
  v6[4] = v5;
  v2[2] = sub_1BF02EF24;
  v2[3] = v6;
  return v2;
}

uint64_t sub_1BF02EEB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF02EEE8()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t *Promise.asOptional()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v1 + 80);
  v3 = sub_1BF17AE6C();
  v4 = sub_1BF007568();
  Promise.then<A>(on:closure:)(v4, sub_1BF02F090, v2, v3);
  OUTLINED_FUNCTION_42();

  return v0;
}

uint64_t sub_1BF02F01C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_20();
  (*(v4 + 16))(a2);
  OUTLINED_FUNCTION_127();
  return __swift_storeEnumTagSinglePayload(v5, v6, v7, a1);
}

uint64_t sub_1BF02F124()
{
  v0 = sub_1BEFFA414();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t objectdestroy_5Tm()
{
  sub_1BF1794FC();
  OUTLINED_FUNCTION_0_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_5Tm_0()
{
  sub_1BF17923C();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_5Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF02F2C8(__int16 a1)
{
  OUTLINED_FUNCTION_1_7();
  sub_1BF01A748(0, v3, v4, MEMORY[0x1E69E6720]);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BF013E28(a1 & 0x1FF, v1 + v7, v9, v10);
}

uint64_t sub_1BF02F3CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BF02F424(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BF02F47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF02F4F4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[5];
  v5 = *v1 >> 61;
  if (v5 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v18 = 0xE600000000000000;
    v19 = 0x7463656A626FLL;
    switch(v5)
    {
      case 1uLL:
        v18 = 0xE500000000000000;
        v19 = 0x7961727261;
        break;
      case 2uLL:
        v19 = 0x676E69727473;
        break;
      case 3uLL:
        v19 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v18 = 0xE400000000000000;
        v19 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v3 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v3 != 0x8000000000000000)
        {
          v19 = v24;
          v18 = v23;
        }

        break;
      default:
        break;
    }

    *v17 = v4;
    *(v17 + 8) = 0x7265626D756ELL;
    *(v17 + 16) = 0xE600000000000000;
    *(v17 + 24) = v19;
    v25 = 10;
    *(v17 + 32) = v18;
    goto LABEL_74;
  }

  v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *(v6 + 24);
  v9 = HIBYTE(v7) & 0xF;
  v10 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0750D8(v8, v7);
    v2 = v38;
    v40 = v39;

    if (v40)
    {
      goto LABEL_73;
    }

LABEL_77:

    return v2;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v42[0] = v8;
    v42[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (v9)
      {
        if (--v9)
        {
          v2 = 0;
          v29 = v42 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v2;
            if ((v2 * 10) >> 64 != (10 * v2) >> 63)
            {
              break;
            }

            v2 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_83:
      __break(1u);
      JUMPOUT(0x1BF02F968);
    }

    if (v8 != 45)
    {
      if (v9)
      {
        v2 = 0;
        v34 = v42;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v2;
          if ((v2 * 10) >> 64 != (10 * v2) >> 63)
          {
            break;
          }

          v2 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v9)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v9)
    {
      if (--v9)
      {
        v2 = 0;
        v20 = v42 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v2;
          if ((v2 * 10) >> 64 != (10 * v2) >> 63)
          {
            break;
          }

          v2 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v9)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_81;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v12 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = sub_1BF17B2FC();
  }

  v13 = *v12;
  if (v13 == 43)
  {
    if (v10 >= 1)
    {
      v9 = v10 - 1;
      if (v10 != 1)
      {
        v2 = 0;
        if (v12)
        {
          v26 = v12 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_71;
            }

            v28 = 10 * v2;
            if ((v2 * 10) >> 64 != (10 * v2) >> 63)
            {
              goto LABEL_71;
            }

            v2 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_71;
            }

            ++v26;
            if (!--v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_71;
    }

    goto LABEL_82;
  }

  if (v13 == 45)
  {
    if (v10 >= 1)
    {
      v9 = v10 - 1;
      if (v10 != 1)
      {
        v2 = 0;
        if (v12)
        {
          v14 = v12 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_71;
            }

            v16 = 10 * v2;
            if ((v2 * 10) >> 64 != (10 * v2) >> 63)
            {
              goto LABEL_71;
            }

            v2 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              goto LABEL_71;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v9) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v10)
  {
    v2 = 0;
    if (v12)
    {
      while (1)
      {
        v32 = *v12 - 48;
        if (v32 > 9)
        {
          goto LABEL_71;
        }

        v33 = 10 * v2;
        if ((v2 * 10) >> 64 != (10 * v2) >> 63)
        {
          goto LABEL_71;
        }

        v2 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          goto LABEL_71;
        }

        ++v12;
        if (!--v10)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_71:
  v2 = 0;
  LOBYTE(v9) = 1;
LABEL_72:
  v43 = v9;
  v37 = v9;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if ((v37 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  sub_1BF05350C();
  swift_allocError();
  *v17 = v4;
  *(v17 + 8) = v8;
  *(v17 + 16) = v7;
  v25 = 13;
LABEL_74:
  *(v17 + 80) = v25;
  swift_willThrow();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v2;
}

uint64_t sub_1BF02F97C()
{
  v1 = *v0;
  if (*v0 == 0x8000000000000000)
  {
    sub_1BF017214(0x8000000000000000);
    sub_1BF017214(0x8000000000000000);
    v2 = 1;
  }

  else
  {
    v3 = v0[5];
    sub_1BF01716C(v1);
    sub_1BF017214(v1);
    sub_1BF017214(0x8000000000000000);
    if (v1 == 0x8000000000000008)
    {
      sub_1BF017214(0x8000000000000008);
      sub_1BF017214(0x8000000000000008);
      v2 = 0;
    }

    else
    {
      sub_1BF01716C(v1);
      sub_1BF017214(v1);
      sub_1BF017214(0x8000000000000008);
      sub_1BF05350C();
      swift_allocError();
      v5 = 0xE600000000000000;
      v6 = 0x7463656A626FLL;
      switch(v1 >> 61)
      {
        case 1uLL:
          v5 = 0xE500000000000000;
          v6 = 0x7961727261;
          break;
        case 2uLL:
          v6 = 0x676E69727473;
          break;
        case 3uLL:
          v6 = 0x7265626D756ELL;
          break;
        case 4uLL:
          v6 = 0x65736C6166;
          if (v1 == 0x8000000000000010)
          {
            v6 = 1819047278;
          }

          v5 = 0xE500000000000000;
          if (v1 == 0x8000000000000010)
          {
            v5 = 0xE400000000000000;
          }

          break;
        default:
          break;
      }

      *v4 = v3;
      *(v4 + 8) = 0x6E61656C6F6F62;
      *(v4 + 16) = 0xE700000000000000;
      *(v4 + 24) = v6;
      *(v4 + 32) = v5;
      *(v4 + 80) = 10;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }
  }

  return v2 & 1;
}

id sub_1BF02FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a3;
  v83 = a4;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v70 - v9;
  v11 = sub_1BF17923C();
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  v19 = sub_1BF1794AC();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BF17AE6C();
  v79 = *(v23 - 8);
  v80 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v82 = &v70 - v25;
  v84 = a2;
  MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v4;
  v31 = *(v4 + 8);
  v33 = *(v4 + 16);
  v34 = *(v4 + 24);
  v35 = *(v4 + 32);
  v36 = *(v4 + 40);
  if (v19 == a1)
  {
    v71 = v30;
    v72 = v28;
    v73 = v36;
    v86 = v33;
    v87 = v34;
    v88 = v35;
    v91 = v32;
    v44 = v34;
    v45 = v33;
    v46 = v32;
    v47 = v35;
    v48 = v31;
    v49 = v85;
    result = sub_1BF051984(&v91, MEMORY[0x1E69E7CC0], v31, v22);
    if (v49)
    {
      return result;
    }

    v74 = v46;
    v75 = v48;
    v76 = v47;
    v77 = v44;
    v78 = v45;
    v51 = v82;
    v52 = v84;
    if (swift_dynamicCast())
    {
      v53 = v51;
      v54 = 0;
    }

    else
    {
      v53 = v51;
      v54 = 1;
    }

    __swift_storeEnumTagSinglePayload(v53, v54, 1, v52);
    v36 = v73;
  }

  else
  {
    v77 = *(v4 + 24);
    v78 = v33;
    v76 = v35;
    v74 = v32;
    v75 = v31;
    if (v11 == a1)
    {
      if (v32 >> 61 != 2)
      {
LABEL_17:
        v51 = v82;
        __swift_storeEnumTagSinglePayload(v82, 1, 1, v84);
LABEL_26:
        (*(v79 + 8))(v51, v80);
        v89 = &type metadata for _JSONDecoder;
        v90 = sub_1BF0172B8();
        v62 = swift_allocObject();
        v86 = v62;
        v63 = v74;
        v64 = v75;
        v66 = v77;
        v65 = v78;
        *(v62 + 16) = v74;
        *(v62 + 24) = v65;
        *(v62 + 32) = v66;
        v67 = v76;
        *(v62 + 40) = v76;
        *(v62 + 48) = v36;
        *(v62 + 56) = v64;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v63);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v65, v66, v67);
        return sub_1BF17A8BC();
      }

      v71 = v30;
      v72 = v28;
      v56 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF1791FC();
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_1BF0F698C(v10);
        sub_1BF05350C();
        swift_allocError();
        *v42 = v36;
        *(v42 + 8) = v56;
        *(v42 + 16) = v55;
        v43 = 9;
        goto LABEL_16;
      }

      v61 = *(v73 + 32);
      v61(v18, v10, v11);
      v61(v14, v18, v11);
      v51 = v82;
      v52 = v84;
      if (swift_dynamicCast())
      {
        v60 = v51;
        v59 = 0;
      }

      else
      {
        v60 = v51;
        v59 = 1;
      }
    }

    else
    {
      if (a1 != MEMORY[0x1E6969080] || (v32 & 0xE000000000000000) != 0x4000000000000000)
      {
        goto LABEL_17;
      }

      v71 = v30;
      v72 = v28;
      v39 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v40 = sub_1BF1792BC();
      if (v41 >> 60 == 15)
      {
        sub_1BF05350C();
        swift_allocError();
        *v42 = v36;
        *(v42 + 8) = v39;
        *(v42 + 16) = v38;
        v43 = 6;
LABEL_16:
        *(v42 + 80) = v43;
        swift_willThrow();
        return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      v57 = v40;
      v58 = v41;

      v86 = v57;
      v87 = v58;
      v51 = v82;
      v52 = v84;
      v59 = swift_dynamicCast() ^ 1;
      v60 = v51;
    }

    __swift_storeEnumTagSinglePayload(v60, v59, 1, v52);
  }

  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
    goto LABEL_26;
  }

  v68 = v71;
  v69 = *(v72 + 32);
  v69(v71, v51, v52);
  return (v69)(v83, v68, v52);
}

uint64_t sub_1BF0301F8(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_5_35(a1, a2);
  toKey<A>(type:name:)(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_0_73();
  sub_1BF0093DC();
}

uint64_t dispatch thunk of ContextType.use<A>(_:for:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 56))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 64))(a1, a2, a3, a4, a5, a6);
}

uint64_t ObservableResolver.resolve<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

void Array<A>.total.getter()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_35();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_22(&unk_1BF180B40);
  OUTLINED_FUNCTION_13_27();
  sub_1BF17B83C();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A3FC();
  (*(v3 + 8))(v8, v1);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0304EC(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v1);
  OUTLINED_FUNCTION_4_35();
  return v3(v1, v2);
}

void sub_1BF03056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    v15 = qword_1ED8F0210;

    if (v15 != -1)
    {
      swift_once();
    }

    sub_1BF030CB0(a3, a6, a7);
    sub_1BF030D28(a3, a6, a7);
    sub_1BF030DA0(a3, a6, a7);
    sub_1BF005910();
    v17 = v16;

    v17(v18);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v13 = swift_allocError();
    *v14 = xmmword_1BF17FB20;
    *(v14 + 16) = 2;
    DeferredPromise.reject(_:)(v13);
  }
}

uint64_t sub_1BF030820(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17BCBC();
  if (*(v3 + 16))
  {
    sub_1BF014CA8();
    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_1BF0308B8(uint64_t a1, uint64_t a2)
{
  sub_1BF018248(a1, a2, &v7);
  if (!v2)
  {
    v4 = v7;
    v5 = 0x8000000000000010;
    v3 = v7 == 0x8000000000000010;
    if (v7 != 0x8000000000000010)
    {
      sub_1BF01716C(v7);
      v5 = v4;
    }

    sub_1BF017214(v5);
    sub_1BF017214(0x8000000000000010);
    sub_1BF017214(v5);
  }

  return v3;
}

uint64_t sub_1BF030980(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[5];
  v4 = *v1 >> 61;
  if (v4 == 3)
  {
    v5 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *(v5 + 24);
    swift_bridgeObjectRetain_n();
    if ((sub_1BF030B4C(v7, v6) & 0x100000000) == 0)
    {
    }

    sub_1BF05350C();
    swift_allocError();
    *v9 = v3;
    *(v9 + 8) = v7;
    *(v9 + 16) = v6;
    v12 = 13;
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    v10 = 0xE600000000000000;
    v11 = 0x7463656A626FLL;
    switch(v4)
    {
      case 1uLL:
        v10 = 0xE500000000000000;
        v11 = 0x7961727261;
        break;
      case 2uLL:
        v11 = 0x676E69727473;
        break;
      case 3uLL:
        v11 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v10 = 0xE400000000000000;
        v11 = 1702195828;
        v13 = 0xE500000000000000;
        v14 = 0x65736C6166;
        if (v2 != 0x8000000000000008)
        {
          v14 = 1819047278;
          v13 = 0xE400000000000000;
        }

        if (v2 != 0x8000000000000000)
        {
          v11 = v14;
          v10 = v13;
        }

        break;
      default:
        break;
    }

    *v9 = v3;
    *(v9 + 8) = 0x7265626D756ELL;
    *(v9 + 16) = 0xE600000000000000;
    *(v9 + 24) = v11;
    v12 = 10;
    *(v9 + 32) = v10;
  }

  *(v9 + 80) = v12;
  swift_willThrow();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

unint64_t sub_1BF030B4C(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = sub_1BF030BB8(a1, a2, &v5);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

BOOL sub_1BF030BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1BF17B1BC();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtof_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

void (*sub_1BF030CB0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0978D4;
}

uint64_t (*sub_1BF030D28(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t (*sub_1BF030DA0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF030E18;
}

uint64_t Promise.recover(on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1BF030E88(a1, a2, a3, sub_1BF032B1C, &unk_1F3DB8458, sub_1BF032B5C, sub_1BF09582C);
}

{
  return sub_1BF030E88(a1, a2, a3, sub_1BF032B1C, &unk_1F3DB83E0, sub_1BF032B5C, sub_1BF095808);
}

uint64_t sub_1BF030E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29();
  type metadata accessor for DeferredPromise(0, *(v12 + 80), v13, v14);

  v15 = sub_1BF0057E8();
  v7();
  OUTLINED_FUNCTION_14_0();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v8;
  v16[4] = v15;
  a6(v15);

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  a7(v17);
  OUTLINED_FUNCTION_31();
  result = swift_beginAccess();
  v19 = *(v15 + 16);
  if (v19)
  {

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void NonEmpty.init<A>(arrayWith:_:)()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1BF00CCEC(v0, v0);
  v6 = *(v1 - 8);
  swift_allocObject();
  v7 = sub_1BF17A50C();
  (*(v6 + 16))(v8, v3, v1);
  sub_1BF00CD7C(v7, v1);
  v9 = sub_1BF17A54C();

  (*(v6 + 8))(v3, v1);
  *v5 = v9;
  OUTLINED_FUNCTION_55();
}

void NonEmpty.map<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a3 + 24);
  v12 = *(a3 + 16);
  v13 = a4;
  v14 = v8;
  v15 = a1;
  v16 = a2;
  v9 = sub_1BEFF79E8();
  v10 = sub_1BEFF5EDC(sub_1BF031230, &v11, v12, a4, v9, v8, MEMORY[0x1E69E7288], &v17);
  if (!v5)
  {
    v17 = v10;
    OUTLINED_FUNCTION_10_23();
    sub_1BF17A65C();
    OUTLINED_FUNCTION_2_46();
    swift_getWitnessTable();
    NonEmpty.init(_:)();
    if (v18)
    {
      *a5 = v18;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BF031230(uint64_t a1, void *a2)
{
  result = (*(v2 + 40))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void NonEmpty.init(_:)()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v4 = v3;
  v7 = type metadata accessor for NonEmpty(0, v1, v5, v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_62();
  v10 = sub_1BF17AA7C();
  v11 = *(v2 - 8);
  if (v10)
  {
    (*(v11 + 8))(v4, v2);
    OUTLINED_FUNCTION_55();

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    (*(v11 + 32))(v0, v4, v2);
    v17 = OUTLINED_FUNCTION_21_0();
    v18(v17);
    v19 = OUTLINED_FUNCTION_16_14();
    __swift_storeEnumTagSinglePayload(v19, v20, 1, v7);
    OUTLINED_FUNCTION_55();
  }
}

void sub_1BF0313D4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x1BF0315D8);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

void sub_1BF031600()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v6 = *(*(v4 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_8_26(AssociatedTypeWitness);
  OUTLINED_FUNCTION_68(v8);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_1_51();
  v1(v5, v6, v3);
  OUTLINED_FUNCTION_4_26();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v12 = OUTLINED_FUNCTION_5_28();
    v13(v12);
    OUTLINED_FUNCTION_55();
  }
}

uint64_t NonEmpty.makeIterator()(uint64_t a1)
{
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(v4 - v3);
  return sub_1BF17A32C();
}

uint64_t LRUCache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LRUCache.refreshIfNeeded(at:)(a1);

  return LRUCache.value(for:)(a2);
}

uint64_t LRUCache.refreshIfNeeded(at:)(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_10_9((v1 + 4), v10);
  v4 = OUTLINED_FUNCTION_5_4(255, *(v2 + 80), *(v2 + 88), v3);
  type metadata accessor for Node(v4, v5, v6, v7);
  sub_1BF179EAC();
  if (!v9)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  OUTLINED_FUNCTION_3_5(v9 + 16, v10);
  if (*(*(v9 + 16) + *(**(v9 + 16) + 112)))
  {
    OUTLINED_FUNCTION_6_6();
    DoublyLinkedList.remove(node:)(v9);

    OUTLINED_FUNCTION_6_6();
    DoublyLinkedList.prepend(node:)(v9);
  }
}

uint64_t LRUCache.value(for:)@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  OUTLINED_FUNCTION_10_9((v2 + 4), v16);
  v5 = *(v4 + 88);
  v7 = OUTLINED_FUNCTION_5_4(255, *(v4 + 80), v5, v6);
  type metadata accessor for Node(v7, v8, v9, v10);
  sub_1BF179EAC();
  swift_endAccess();
  if (v15)
  {
    OUTLINED_FUNCTION_3_5(v15 + 16, v16);
    v11 = *(v15 + 16);

    (*(*(v5 - 8) + 16))(a2, v11 + *(*v11 + 104), v5);

    v12 = a2;
    v13 = 0;
  }

  else
  {
    v12 = a2;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v5);
}

uint64_t LRUCache.cache(value:for:expires:)(uint64_t a1, void (*a2)(void, void, void), int a3)
{
  v4 = v3;
  v44 = a3;
  v6 = *v3;
  v7 = v6[11];
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v42 - v12;
  v14 = v6[10];
  OUTLINED_FUNCTION_2_3();
  v46 = v15;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v16, v17);
  v45 = v42 - v18;
  OUTLINED_FUNCTION_10_9((v4 + 4), v50);
  v20 = OUTLINED_FUNCTION_5_4(255, v14, v7, v19);
  v42[1] = v21;
  v24 = type metadata accessor for Node(v20, v21, v22, v23);
  v42[3] = v6[12];
  v43 = a2;
  sub_1BF179EAC();
  v25 = v49[0];
  v42[2] = v24;
  if (v49[0])
  {
    swift_endAccess();
    v6 = v25;
    if ((Node.isLinked.getter() & 1) != 0 || (v6 = v4[5], OUTLINED_FUNCTION_3_5((v6 + 2), v47), (v26 = v6[2]) != 0) && v26 == v25)
    {
      OUTLINED_FUNCTION_6_6();
      DoublyLinkedList.remove(node:)(v25);

      if (__OFSUB__(v4[3], 1))
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_2_6();
      v4[3] = v28;
    }

    else
    {
      OUTLINED_FUNCTION_2_6();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    swift_endAccess();
  }

  v29 = v45;
  v30 = *(v46 + 16);
  v31 = v43;
  v30(v45, v43, v14);
  (*(v9 + 16))(v24, v6, v13);
  v32 = v44;
  v50[0] = sub_1BF031FFC(v29, v24, v44 & 1);
  v33 = Node.__allocating_init(value:)(v50);
  v43 = v30;
  v30(v29, v31, v14);
  v49[0] = v33;
  OUTLINED_FUNCTION_7_2((v4 + 4), v50);
  sub_1BF179E9C();

  sub_1BF179EBC();
  swift_endAccess();
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_6();
  DoublyLinkedList.prepend(node:)(v33);

  v34 = v4[3];
  v35 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
    v4[3] = v35;
    v36 = v4[5];
    OUTLINED_FUNCTION_3_5(v36 + 24, v50);
    v37 = *(v36 + 24);
    if (v37 && v4[2] < v35)
    {
      OUTLINED_FUNCTION_3_5(v37 + 16, v49);
      v38 = v45;
      v43(v45, *(v37 + 16) + *(**(v37 + 16) + 96), v14);
      OUTLINED_FUNCTION_7_2((v4 + 4), v48);

      sub_1BF179D7C();
      swift_endAccess();
      (*(v46 + 8))(v38, v14);

      OUTLINED_FUNCTION_6_6();
      DoublyLinkedList.remove(node:)(v37);

      v39 = v4[3];
      v40 = __OFSUB__(v39, 1);
      v41 = v39 - 1;
      if (!v40)
      {
        v4[3] = v41;
        return result;
      }

      goto LABEL_18;
    }

LABEL_15:
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t *sub_1BF031F00(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  (*(*(*(v6 + 88) - 8) + 32))(v3 + *(*v3 + 104), a2);
  *(v3 + *(*v3 + 112)) = a3;
  return v3;
}

uint64_t Node.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Node.init(value:)(a1);
  return v2;
}

uint64_t Node.init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_47();
  *(v1 + *(v4 + 96)) = 0;
  OUTLINED_FUNCTION_29();
  swift_weakInit();
  OUTLINED_FUNCTION_29();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v5 + 88), a1);
  return v1;
}

uint64_t DoublyLinkedList.prepend(node:)(uint64_t a1)
{
  OUTLINED_FUNCTION_125(v1 + 16, v12);
  v3 = *(v1 + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_125(v3 + *(*v3 + 104), v11);
    swift_weakAssign();
    v4 = *(v1 + 16);
    OUTLINED_FUNCTION_4_0();
    v6 = *(v5 + 96);
    OUTLINED_FUNCTION_125(a1 + v6, v10);
    *(a1 + v6) = v4;

    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_125(a1 + *(v7 + 104), &v9);
    swift_weakAssign();
    *(v1 + 16) = a1;
  }

  else
  {
    *(v1 + 16) = a1;
    OUTLINED_FUNCTION_125(v1 + 24, v11);
    OUTLINED_FUNCTION_6_41();
  }
}

uint64_t DoublyLinkedList.remove(node:)(uint64_t a1)
{
  OUTLINED_FUNCTION_125(v1 + 16, v30);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v12 = *(*v3 + 96);
    OUTLINED_FUNCTION_3_5(v3 + v12, v29);
    v13 = *(v3 + v12);
    if (v13)
    {
      *(v1 + 16) = v13;
      swift_retain_n();

      OUTLINED_FUNCTION_125(v13 + *(*v13 + 104), v28);
      swift_weakAssign();
    }

    else
    {
      *(v1 + 16) = 0;

      OUTLINED_FUNCTION_125(v1 + 24, v28);
      *(v1 + 24) = 0;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_3_5(a1 + v6, v29);
  v7 = *(a1 + v6);
  if (v7)
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_3_5(a1 + *(v8 + 104), v28);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *(*Strong + 96);
      OUTLINED_FUNCTION_125(Strong + v11, v25);
      *(v10 + v11) = v7;
      swift_retain_n();
    }

    else
    {
    }

    v18 = *(a1 + v6);
    if (v18)
    {
      swift_weakLoadStrong();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_125(v18 + *(v19 + 104), v24);
      swift_weakAssign();
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_5(a1 + *(v14 + 104), v28);
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(*v15 + 96);
    OUTLINED_FUNCTION_125(v15 + v17, v25);
    *(v16 + v17) = 0;

    OUTLINED_FUNCTION_125(v1 + 24, v24);
    *(v1 + 24) = v16;
LABEL_16:
  }

  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_125(a1 + *(v20 + 104), v27);
  swift_weakAssign();
  OUTLINED_FUNCTION_4_0();
  v22 = *(v21 + 96);
  OUTLINED_FUNCTION_125(a1 + v22, v26);
  *(a1 + v22) = 0;
}

uint64_t sub_1BF03252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  sub_1BF179D1C();
  (*(v11 + 16))(v16, v8, a3);
  v17 = sub_1BF17A3DC();

  return v17;
}

uint64_t *Atomic.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t objectdestroy_9Tm()
{

  v0 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF032840(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 8))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      *(a1 + 16) = v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF032A44(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29();
  UnfairLock.lock()();
  sub_1BF005128(a1);
  sub_1BF032AC0(v1);
}

uint64_t OUTLINED_FUNCTION_115@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1BF047B30(v2, &a2 - a1);
}

void OUTLINED_FUNCTION_115_0(uint64_t a1, uint64_t a2)
{

  sub_1BEFEEEE0(0, a2);
}

uint64_t sub_1BF032BA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1BF0115C4(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1BF02061C(a1, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a3(256);

      return sub_1BF02F47C(v8, sub_1BF0115C4);
    }

    else
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v11 = sub_1BF1797FC();
      __swift_project_value_buffer(v11, qword_1ED8F5298);

      v12 = sub_1BF1797DC();
      v13 = sub_1BF17ACDC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v15;
        *v14 = 136446210;
        v16 = *(v10 + 16);
        v17 = *(v16 + 40);
        v18 = *(v16 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v19 = sub_1BF01A7AC(v17, v18, &v21);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_1BEFE0000, v12, v13, "HttpConnectionHandler:[%{public}s] send 404", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1BFB547B0](v15, -1, -1);
        MEMORY[0x1BFB547B0](v14, -1, -1);
      }

      a3(0);
    }
  }

  return result;
}

void sub_1BF032E20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id AsyncOperation.init()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = (v0 + qword_1ED8EF088);
  OperationID.init()();
  v4 = v21;
  *v3 = v20;
  v3[1] = v4;
  v5 = qword_1ED8EEFF8;
  v6 = *((v2 & v1) + 0x50);
  v7 = OUTLINED_FUNCTION_9_3();
  *(v0 + v5) = sub_1BF038B6C(v7, v8);
  v9 = qword_1ED8EF090;
  v10 = OUTLINED_FUNCTION_9_3();
  *(v0 + v9) = sub_1BF038C98(v10, v11, v6, v12);
  v13 = qword_1ED8EF000;
  *(v0 + v13) = sub_1BF0390C8(0, v6, v14, v15);
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AsyncOperation(0, v6, v16, v17);
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_1BF032F64()
{
  result = sub_1BF17A1BC();
  if (!result)
  {
    goto LABEL_4;
  }

  v1 = result;
  v2 = sub_1BF0387D8(result, 0);
  v3 = sub_1BF03888C(&v4, v2 + 4, v1, 0xD000000000000010, 0x80000001BF18EAD0);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  off_1ED8EF1E0 = v2;
  return result;
}

void sub_1BF033004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E5EE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Container.TestSuite.rawValue.getter()
{
  OUTLINED_FUNCTION_5_44();
  v2 = 0x6974616D6F747561;
  if (!v3)
  {
    v2 = 1869440356;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BF0330A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1BF033104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

id sub_1BF033148(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_1BF17A8CC();

  return v3;
}

uint64_t _s13TeaFoundation16UniqueCollectionV12arrayLiteralACyxGxd_tcfC_0@<X0>(Swift::OpaquePointer a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = sub_1BF179CFC();
  a5[1] = sub_1BF179CEC();
  v9 = OUTLINED_FUNCTION_54();
  type metadata accessor for UniqueCollection(v9, v10, a3, a4);
  UniqueCollection.append(contentsOf:)(a1);
}

uint64_t sub_1BF03324C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  sub_1BF033588();
  result = OUTLINED_FUNCTION_28_5();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1BF17B86C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UniqueCollection.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v16 = v9;
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF17A4EC();
  v18 = v11;
  OUTLINED_FUNCTION_77_0();
  if (v11 == sub_1BF17A5AC())
  {
LABEL_2:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  while (1)
  {
    OUTLINED_FUNCTION_77_0();
    v12 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v12 & 1) == 0)
    {
      break;
    }

    (*(v6 + 16))(v10, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v4);
LABEL_5:
    sub_1BF17A62C();
    UniqueCollection.append(_:)();
    (*(v6 + 8))(v10, v4);
    OUTLINED_FUNCTION_77_0();
    v13 = sub_1BF17A5AC();
    v11 = v18;
    if (v18 == v13)
    {
      goto LABEL_2;
    }
  }

  v14 = sub_1BF17B23C();
  if (v16 == 8)
  {
    v17 = v14;
    (*(v6 + 16))(v10, &v17, v4);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1BF033588()
{
  if (!qword_1ED8EE9A8)
  {
    v0 = sub_1BF17B19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE9A8);
    }
  }
}

void UniqueCollection.append(_:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_40();
  v9 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_12_17();
  v16 = v15(v14);
  OUTLINED_FUNCTION_31_8(v16, v17);
  sub_1BF179EAC();

  OUTLINED_FUNCTION_25_8(v1);
  v18(v1, v9);
  if (v3 == 1)
  {
    v19 = OUTLINED_FUNCTION_21_0();
    (v5)(v19);
    v20 = OUTLINED_FUNCTION_16_12();
    (v5)(v20);
    v21 = OUTLINED_FUNCTION_27_7(v0);
    v22 = OUTLINED_FUNCTION_30_6(v21, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_33_6(v22);
    OUTLINED_FUNCTION_20_11();
    v5();
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5DC();
  }

  else
  {
    if (qword_1ED8F01C8 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    OUTLINED_FUNCTION_29_7();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    v24 = OUTLINED_FUNCTION_21_0();
    (v5)(v24);
    OUTLINED_FUNCTION_31_0();
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1BF071CD8();
    *(inited + 32) = v6;
    *(inited + 40) = v25;
    if (v0 != 1)
    {
      OUTLINED_FUNCTION_28_7("collection must contain unique elements, duplicate=%{public}@");
    }

    swift_setDeallocating();
    sub_1BF0C8384();
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0338A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF033900(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

id sub_1BF033940()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (sub_1BF033B8C())
  {
    return 0;
  }

  v5 = type metadata accessor for AsyncOperation(0, *(v1 + 80), v2, v3);
  v6.receiver = v0;
  v6.super_class = v5;
  return objc_msgSendSuper2(&v6, sel_isReady);
}

uint64_t sub_1BF0339D0(void *a1)
{
  v1 = a1;
  v2 = sub_1BF033940();

  return v2 & 1;
}

uint64_t UniqueParentChildCollection.mapChildren(in:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v24 = *v11;
  v25 = v11[1];
  v26 = *v11;
  v27 = v25;
  v13 = type metadata accessor for UniqueCollection(0, v3, *(v12 + 40), *(v12 + 48));
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = UniqueCollection.startIndex.getter(v13);

  v28 = v14;
  if (v14 != UniqueCollection.endIndex.getter(v13))
  {
    v21 = (v5 + 8);
    do
    {
      UniqueCollection.subscript.getter(v14, v13, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28);
      v14 = UniqueCollection.index(after:)(v14);
      UniqueParentChildCollection.mapChildren(in:)(v10, a2);
      (*v21)(v10, v3);
    }

    while (v14 != UniqueCollection.endIndex.getter(v13));
  }
}

{
  v45 = a1;
  v4 = a2[2];
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v39 - v7;
  v9 = a2[3];
  OUTLINED_FUNCTION_2_3();
  v40 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - v15;
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v44 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v41 = v25;
  OUTLINED_FUNCTION_59();
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v39 - v29;
  v42 = *(v18 + 16);
  v43 = v18 + 16;
  v42(v23, v45, v4, v28);
  v46 = v30;
  sub_1BF17A32C();
  v47 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v31 = (v40 + 32);
  for (i = (v40 + 8); ; (*i)(v2, v9))
  {
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v9) == 1)
    {
      break;
    }

    (*v31)(v2, v16, v9);
    v33 = OUTLINED_FUNCTION_3_46();
    v35 = v34(v33);
    v37 = v36;
    (v42)(v8, v45, v4);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v4);
    v48 = v35;
    v49 = v37;
    sub_1BF179E9C();
    sub_1BF179EBC();
  }

  return (*(v41 + 8))(v46, v47);
}

uint64_t sub_1BF033B8C()
{

  Atomic.wrappedValue.getter(&v1);

  return v1;
}

uint64_t UniqueCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_2();
  v15 = v14;
  v17 = v16;
  v18 = UniqueCollection.startIndex.getter(v14);
  result = UniqueCollection.endIndex.getter(v15);
  if (result < v18)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v18 > v17 || result <= v17)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_2();

  return sub_1BF17A69C();
}

uint64_t sub_1BF033C94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BF037594(0, &qword_1ED8EAE18, sub_1BF0378F8, &type metadata for BackgroundFetchTrigger);
  result = sub_1BF17B17C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

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
        goto LABEL_31;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1BF1470D8(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v28 = *(v16 + 16);
    v29 = *v16;
    v17 = *(v16 + 32);
    sub_1BF17BB6C();
    if (*(&v29 + 1) > 2uLL)
    {
      sub_1BF179F3C();
    }

    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v5 + 48) + 40 * v21;
    *v26 = v29;
    *(v26 + 16) = v28;
    *(v26 + 32) = v17;
    ++*(v5 + 16);
    if (!v10)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1BF033FC4(void *a1)
{
  v4 = a1;
  sub_1BF034374(v4, v1, v2, v3);
}

uint64_t (*sub_1BF034374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = v5;
  v7 = MEMORY[0x1E69E7D40];
  type metadata accessor for Result(0, *((*MEMORY[0x1E69E7D40] & *v5) + 0x50), a3, a4);
  OUTLINED_FUNCTION_8_36();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v27 - v12);
  v14 = sub_1BF03463C();
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v14();
    sub_1BEFE52DC(v16, v17);
  }

  if ([v6 isCancelled])
  {
    sub_1BF0346F8(2);
    result = sub_1BF03938C();
    if (result)
    {
      v20 = result;
      v21 = v19;
      sub_1BF1691AC();
      v22 = swift_allocError();
      *v23 = 0;
      *v13 = v22;
      swift_storeEnumTagMultiPayload();
      (v20)(v13);
      sub_1BEFE52DC(v20, v21);
      return (*(v9 + 8))(v13, v4);
    }
  }

  else
  {
    sub_1BF0346F8(1);
    v24 = swift_allocObject();
    *(v24 + 16) = v6;
    v25 = *((*v7 & *v6) + 0xC0);
    v26 = v6;
    v25(sub_1BF03930C, v24);
  }

  return result;
}

uint64_t sub_1BF034594()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF0345CC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v2 + 16);
  sub_1BF009984(v3, *(v1 + 32));
  os_unfair_lock_unlock(v4);
  return v3;
}

uint64_t (*sub_1BF03463C())()
{

  v0 = sub_1BF0345CC();
  v2 = v1;

  if (!v0)
  {
    return OUTLINED_FUNCTION_9_3();
  }

  OUTLINED_FUNCTION_58();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return sub_1BF16C6EC;
}

uint64_t sub_1BF0346C4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1BF0346F8(char a1)
{
  sub_1BF034760();
  v2 = a1;

  Atomic.wrappedValue.setter(&v2);

  sub_1BF0347BC();
}

void sub_1BF034760()
{
  v1 = sub_1BF17A07C();
  [v0 willChangeValueForKey_];
}

void sub_1BF0347BC()
{
  v1 = sub_1BF17A07C();
  [v0 didChangeValueForKey_];
}