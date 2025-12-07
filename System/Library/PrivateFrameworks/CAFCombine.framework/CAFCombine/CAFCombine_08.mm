uint64_t CAFTypeTestObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTypeTestObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestBool:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_16_3(v2 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testBool, a2);

  specialized SafePublished.value.setter(v3 & 1);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt32:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt64:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v1, v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v5 = OUTLINED_FUNCTION_7_5();
  v0(v5);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestFloat:)(float a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_3(v3 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testFloat, a3);

  specialized SafePublished.value.setter(LODWORD(a1));
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestString:)()
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4(v0);

  v1 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v1, v2);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestData:)()
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4(v0);
  OUTLINED_FUNCTION_76_0();
  v1 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v1, v2);
  v3 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v3, v4);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestRawData:)()
{
  OUTLINED_FUNCTION_46_0();

  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v0, v1);
  v2 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v2, v3);
}

void @objc CAFTypeTestObservable.typeTestService(_:didUpdateTestData:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_0();
  v21 = v20;
  v22 = v18;
  v35 = v23;
  if (v19)
  {
    v24 = v19;
    v25 = v18;
    v26 = v35;
    v27 = v24;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v31 = v18;
    v32 = v35;
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v21();
  outlined consume of Data?(v28, v30);

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt8:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestUInt16:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayBool:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 BOOLValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt8:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 unsignedCharValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

double @objc CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayBool:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt16:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 unsignedShortValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayInt8:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 charValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayInt16:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_11_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 shortValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt32:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v10 = a4;
  v12 = *a3;
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (v10)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        v10 = v26;
      }

      ++v7;
      *(v10 + 16) = v16;
      *(v10 + 4 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayUInt64:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v10 = a4;
  v12 = *a3;
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (v10)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        v10 = v26;
      }

      ++v7;
      *(v10 + 16) = v16;
      *(v10 + 8 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayFloat:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_3(v2 + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable__testArrayFloat, a2);
  if (!a2 || (v4 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    specialized SafePublished.value.setter(v18);
  }

  v5 = v4;
  v19 = MEMORY[0x277D84F90];

  v6 = OUTLINED_FUNCTION_11_4();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6, v7, v8);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v19;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v12 = OUTLINED_FUNCTION_75_0();
      }

      v13 = v12;
      [v12 floatValue];
      v15 = v14;

      v19 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      ++v10;
      *(v11 + 16) = v17 + 1;
      *(v11 + 4 * v17 + 32) = v15;
    }

    while (v5 != v10);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayString:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);

  v0(v1);
}

double @objc CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a1;
  a6();

  return result;
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestArrayRawData:)(uint64_t a1, uint64_t a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTypeTestObservable.typeTestService(_:didUpdateTestComplexItem:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  v6 = v1;

  v0(v1);
}

uint64_t CAFTypeTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTypeTestObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t keypath_get_22Tm_0()
{
  OUTLINED_FUNCTION_15_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t keypath_get_220Tm()
{
  OUTLINED_FUNCTION_15_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

void key path getter for CAFTypeTest.testData : CAFTypeTest(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path getter for CAFTypeTest.testArrayString : CAFTypeTest(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

id key path getter for CAFTypeTest.testComplexArrayItemValue : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexArrayItemValue];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTest.testComplexNestedItemValue : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexNestedItemValue];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTest.testComplexNestedItemList : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexNestedItemList];
  *a2 = result;
  return result;
}

id key path getter for CAFTypeTest.testComplexNestedListItemValue : CAFTypeTest@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 testComplexNestedListItemValue];
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFTypeTest and conformance CAFTypeTest()
{
  result = lazy protocol witness table cache variable for type CAFTypeTest and conformance CAFTypeTest;
  if (!lazy protocol witness table cache variable for type CAFTypeTest and conformance CAFTypeTest)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTypeTest, 0x277CF8710);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTypeTest and conformance CAFTypeTest);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTypeTestObservable and conformance CAFTypeTestObservable(&lazy protocol witness table cache variable for type CAFTypeTestObservable and conformance CAFTypeTestObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestObservable and conformance CAFTypeTestObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTypeTestObservable();
    OUTLINED_FUNCTION_23_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFTypeTestObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine21CAFTypeTestObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_37_0()
{

  JUMPOUT(0x245D0A530);
}

void OUTLINED_FUNCTION_65_1()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_68_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_SSSgTt3g5(v11, v12, a1, v13, v10, a6, a7, a8, a9, a10);
}

void OUTLINED_FUNCTION_71_1()
{

  JUMPOUT(0x245D0A530);
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA21CAFTypeTestObservableC_10Foundation4DataVSgTt3g5(v10, v11, v13, v14, v12, a6, a7, a8, a9, a10);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testBool : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testBool.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testBool.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v29, v30, v31);
  v16 = *v15;
  v23 = OUTLINED_FUNCTION_42_0(v14, v15, v17, v18, v19, v20, v21, v22, v27);
  v24(v23);

  return v16;
}

uint64_t CAFTypeTestWithStatesObservable.testBool.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_SbSgTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

uint64_t CAFTypeTestWithStatesObservable.testBool.modify()
{
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v6 = OUTLINED_FUNCTION_7_5();
  v7(v6);

  *(v1 + 88) = v0;
  return OUTLINED_FUNCTION_23_2();
}

void CAFTypeTestWithStatesObservable.testBool.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_SbSgTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt8 : CAFTypeTestWithStatesObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestWithStatesObservable.testUInt8.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v0(*(v2 + 88) | (*(v1 + 89) << 8), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v3);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestWithStatesObservable.testUInt16.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v0(*(v2 + 88) | (*(v1 + 90) << 16), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v3);
}

unint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testUInt32.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_53_0();
  v0(*(v2 + 88) | (*(v1 + 92) << 32), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  OUTLINED_FUNCTION_91_0();

  free(v3);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testUInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testUInt64.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt64.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestWithStatesObservable.testUInt64.setter(a1, a2, &unk_2423072A0, &unk_2423072C8, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_s6UInt64VSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestWithStatesObservable.testUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testInt8 : CAFTypeTestWithStatesObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestWithStatesObservable.testInt8.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestWithStatesObservable.testInt16.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

unint64_t key path getter for CAFTypeTestWithStatesObservable.testInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testInt32.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void CAFTypeTestWithStatesObservable.testInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testInt64.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt64.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28, v29, v30, v31);
  v16 = *v15;
  v23 = OUTLINED_FUNCTION_42_0(v14, v15, v17, v18, v19, v20, v21, v22, v27);
  v24(v23);

  return v16;
}

void CAFTypeTestWithStatesObservable.testInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  *(v1 + 88) = swift_getKeyPath();
  *(v1 + 96) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_7_5();
  v10(v9);

  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestWithStatesObservable.testUInt64.modify(uint64_t a1, uint64_t a2, void (*a3)(void, void, id, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 56), *(*a1 + 64), *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));

  free(v3);
}

unint64_t key path getter for CAFTypeTestWithStatesObservable.testFloat : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testFloat.getter(a2, a3, a4, a5, a6);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t CAFTypeTestWithStatesObservable.testUInt32.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = *(v15 + 4);
  v24 = OUTLINED_FUNCTION_42_0(v14, v15, v18, v19, v20, v21, v22, v23, v28);
  v25(v24);

  return v16 | (v17 << 32);
}

uint64_t CAFTypeTestWithStatesObservable.testUInt32.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestWithStatesObservable.testFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 4);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 92) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testString : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testString.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testString : CAFTypeTestWithStatesObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CAFTypeTestWithStatesObservable.testString.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t CAFTypeTestWithStatesObservable.testString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;

  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

uint64_t CAFTypeTestWithStatesObservable.testString.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return CAFTypeTestWithStatesObservable.testString.setter(a1, a2, &unk_242307450, &unk_242307478, _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_SSSgTt3g5, a6, a7, a8, a9);
}

{
  OUTLINED_FUNCTION_90_0();
  v21 = v10;
  OUTLINED_FUNCTION_81_0();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v9;
  OUTLINED_FUNCTION_91_0();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, a9, v21);
}

void CAFTypeTestWithStatesObservable.testString.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v9 = *v7;
  v8 = v7[1];

  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v9;
  v1[8] = v8;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

void CAFTypeTestWithStatesObservable.testString.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {

    v4 = v3;
    OUTLINED_FUNCTION_70_1(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  else
  {
    v12 = v3;
    OUTLINED_FUNCTION_70_1(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  free(v2);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testData : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testData.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testData : CAFTypeTestWithStatesObservable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  outlined copy of Data?(*a1, v2);
  return CAFTypeTestWithStatesObservable.testData.setter(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t CAFTypeTestWithStatesObservable.testData.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = outlined copy of Data?(*v15, *(v15 + 8));
  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

void CAFTypeTestWithStatesObservable.testData.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_77_0();
  v4 = __swift_coroFrameAllocStub(v3);
  *(OUTLINED_FUNCTION_13_4(v4) + 80) = v0;
  v1[11] = swift_getKeyPath();
  v1[12] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_11_3();
  swift_retain_n();

  v5 = v2;
  v6 = OUTLINED_FUNCTION_2_5();
  v8 = *v7;
  v9 = v7[1];
  v1[7] = v8;
  v1[8] = v9;
  outlined copy of Data?(v8, v9);
  v10 = OUTLINED_FUNCTION_7_5();
  v6(v10);
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestWithStatesObservable.testRawData.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testEnum : CAFTypeTestWithStatesObservable@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestWithStatesObservable.testEnum.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt8.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_68_0(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_27_2();
  v9 = *(v8 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  v18 = v9;

  v10 = v9;
  v12 = OUTLINED_FUNCTION_70_0(v10, v11);
  v14 = *v13;
  v15 = v13[1];
  v12(v17, 0);

  return v14 | (v15 << 8);
}

uint64_t CAFTypeTestWithStatesObservable.testUInt8.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0(a1, a2);
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestWithStatesObservable.testEnum.modify()
{
  OUTLINED_FUNCTION_235();
  v3 = OUTLINED_FUNCTION_26_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_15_3(v4);
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v5 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_29_2();
  v7 = *(v6 + 1);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v1 + 88) = v0;
  *(v1 + 89) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testDimensionUnitRawValue : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  result = CAFTypeTestWithStatesObservable.testDimensionUnitRawValue.getter(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testUInt16.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_68_0(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_27_2();
  v9 = *(v8 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  v18 = v9;

  v10 = v9;
  v12 = OUTLINED_FUNCTION_70_0(v10, v11);
  v14 = *v13;
  v15 = *(v13 + 2);
  v12(v17, 0);

  return v14 | (v15 << 16);
}

uint64_t CAFTypeTestWithStatesObservable.testUInt16.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0(a1, a2);
  OUTLINED_FUNCTION_89_0();
  v3 = v2;
  OUTLINED_FUNCTION_51_0();

  return v4();
}

void CAFTypeTestWithStatesObservable.testDimensionUnitRawValue.modify()
{
  OUTLINED_FUNCTION_235();
  v2 = OUTLINED_FUNCTION_26_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_15_3(v3);
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_3_6(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v4 = v1;
  OUTLINED_FUNCTION_2_5();
  v6 = *v5;
  v7 = *(v5 + 2);
  v8 = OUTLINED_FUNCTION_7_5();
  v9(v8);

  *(v0 + 88) = v6;
  *(v0 + 90) = v7;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItem : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testComplexItem.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItem : CAFTypeTestWithStatesObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItem.setter(v1, v3, v4, v5);
}

void CAFTypeTestWithStatesObservable.testComplexItem.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0();
  if (v4)
  {
    v5 = v1;
    v6 = v3;
    v7 = OUTLINED_FUNCTION_26_2();
    v0(v7);
  }

  else
  {
    v8 = v3;
    v9 = OUTLINED_FUNCTION_26_2();
    v0(v9);
  }

  OUTLINED_FUNCTION_236();

  free(v10);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayBool : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayBool.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayBool.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

{
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_47_0();
  if (v2)
  {

    v3 = v1;
    v4 = OUTLINED_FUNCTION_26_2();
    v0(v4);
  }

  else
  {
    v5 = v1;
    v6 = OUTLINED_FUNCTION_26_2();
    v0(v6);
  }

  OUTLINED_FUNCTION_236();

  free(v7);
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt8 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayUInt8.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayUInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayUInt16.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayUInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayUInt32.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayUInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayUInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayUInt64.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayUInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt8 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayInt8.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayInt8.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt16 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayInt16.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayInt16.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt32 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayInt32.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayInt32.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayInt64 : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayInt64.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayInt64.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayFloat : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayFloat.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayFloat.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayString : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayString.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

void CAFTypeTestWithStatesObservable.testArrayString.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t key path getter for CAFTypeTestWithStatesObservable.testArrayData : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testArrayData.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.testArrayBool.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;

  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

void CAFTypeTestWithStatesObservable.testArrayData.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  v7 = OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_28_3(v7, v8);
  v9 = OUTLINED_FUNCTION_7_5();
  v0(v9);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestWithStatesObservable.testArrayRawData.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFTypeTestWithStatesObservable.$testRawData.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItems : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testComplexItems.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItems : CAFTypeTestWithStatesObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItems.setter(v1, v3, v4, v5);
}

void CAFTypeTestWithStatesObservable.testComplexItems.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItemValue : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testComplexItemValue.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItemValue : CAFTypeTestWithStatesObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItemValue.setter(v1, v3, v4, v5);
}

void CAFTypeTestWithStatesObservable.testComplexItemValue.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

id key path getter for CAFTypeTestWithStatesObservable.testComplexItemList : CAFTypeTestWithStatesObservable@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  result = CAFTypeTestWithStatesObservable.testComplexItemList.getter(a1, a3, a4, a5, a6);
  *a2 = result;
  return result;
}

uint64_t key path setter for CAFTypeTestWithStatesObservable.testComplexItemList : CAFTypeTestWithStatesObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFTypeTestWithStatesObservable.testComplexItemList.setter(v1, v3, v4, v5);
}

id CAFTypeTestWithStatesObservable.testComplexItem.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_20_3();
  swift_retain_n();

  v6 = v5;
  v14 = OUTLINED_FUNCTION_24_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32);
  v16 = *v15;
  v17 = *v15;
  v25 = OUTLINED_FUNCTION_42_0(v17, v18, v19, v20, v21, v22, v23, v24, v28);
  v14(v25);

  OUTLINED_FUNCTION_36_0();

  return v16;
}

uint64_t CAFTypeTestWithStatesObservable.testComplexItem.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id, uint64_t, uint64_t))
{
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_89_0();
  v8 = v4;

  return a4(a1, v8, v5, v7);
}

void CAFTypeTestWithStatesObservable.testComplexItemList.modify()
{
  OUTLINED_FUNCTION_235();
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_2_36(v5);
  v1[10] = swift_getKeyPath();
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);

  v6 = v2;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_30_2();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_7_5();
  v0(v8);
  OUTLINED_FUNCTION_11_3();

  v1[7] = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_236();
}

uint64_t CAFTypeTestWithStatesObservable.$testBool.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_3(v2 + *a1, a2);

  v5 = a2(v4);

  return v5;
}

uint64_t CAFTypeTestWithStatesObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed);
  [v1 registeredForTestBool];
  OUTLINED_FUNCTION_9_2();
  if (v2)
  {
    CAFTypeTestWithStatesObservable.testBool.getter(v2, v3, v4, v5, v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v7 = OUTLINED_FUNCTION_38_0(v8);
  }

  v315 = v7;
  v316 = v3;
  v9 = [v1 registeredForTestUInt8];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v9)
  {
    v18 = CAFTypeTestWithStatesObservable.testUInt8.getter(v9, 0xEE003E6465726574, v10, v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_52_0(v18);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v16 = OUTLINED_FUNCTION_38_0(v19);
  }

  v314 = v17;
  [v1 registeredForTestUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v20)
  {
    v29 = CAFTypeTestWithStatesObservable.testUInt16.getter(v20, v21, v22, v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_50_0(v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    v28 = OUTLINED_FUNCTION_38_0(v30);
  }

  v312 = v28;
  v313 = v21;
  [v1 registeredForTestUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v31)
  {
    v37 = CAFTypeTestWithStatesObservable.testUInt32.getter(v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_49_0(v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v36 = OUTLINED_FUNCTION_38_0(v38);
  }

  v310 = v36;
  v311 = v32;
  [v1 registeredForTestUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v39)
  {
    CAFTypeTestWithStatesObservable.testUInt64.getter(v39, v40, v41, v42, v43);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    v44 = OUTLINED_FUNCTION_38_0(v45);
  }

  v308 = v44;
  v309 = v40;
  [v1 registeredForTestInt8];
  OUTLINED_FUNCTION_9_2();
  if (v46)
  {
    v55 = CAFTypeTestWithStatesObservable.testInt8.getter(v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_52_0(v55);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VSgMd, &_ss4Int8VSgMR);
    v54 = OUTLINED_FUNCTION_38_0(v56);
  }

  v306 = v54;
  v307 = v47;
  [v1 registeredForTestInt16];
  OUTLINED_FUNCTION_9_2();
  if (v57)
  {
    v66 = CAFTypeTestWithStatesObservable.testInt16.getter(v57, v58, v59, v60, v61, v62, v63, v64);
    OUTLINED_FUNCTION_50_0(v66);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VSgMd, &_ss5Int16VSgMR);
    v65 = OUTLINED_FUNCTION_38_0(v67);
  }

  v304 = v65;
  v305 = v58;
  [v1 registeredForTestInt32];
  OUTLINED_FUNCTION_9_2();
  if (v68)
  {
    v74 = CAFTypeTestWithStatesObservable.testInt32.getter(v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_49_0(v74);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v73 = OUTLINED_FUNCTION_38_0(v75);
  }

  v302 = v73;
  v303 = v69;
  [v1 registeredForTestInt64];
  OUTLINED_FUNCTION_9_2();
  if (v76)
  {
    CAFTypeTestWithStatesObservable.testInt64.getter(v76, v77, v78, v79, v80);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
    v81 = OUTLINED_FUNCTION_38_0(v82);
  }

  v300 = v81;
  v301 = v77;
  [v1 registeredForTestFloat];
  OUTLINED_FUNCTION_9_2();
  if (v83)
  {
    v89 = CAFTypeTestWithStatesObservable.testFloat.getter(v83, v84, v85, v86, v87);
    OUTLINED_FUNCTION_49_0(v89);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v88 = OUTLINED_FUNCTION_38_0(v90);
  }

  v298 = v88;
  v299 = v84;
  [v1 registeredForTestString];
  OUTLINED_FUNCTION_9_2();
  if (v91)
  {
    CAFTypeTestWithStatesObservable.testString.getter(v91, v92, v93, v94, v95);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v96 = OUTLINED_FUNCTION_38_0(v97);
  }

  v296 = v96;
  v297 = v92;
  [v1 registeredForTestData];
  OUTLINED_FUNCTION_9_2();
  if (v98)
  {
    CAFTypeTestWithStatesObservable.testData.getter(v98, v99, v100, v101, v102);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v103 = OUTLINED_FUNCTION_38_0(v104);
  }

  v294 = v103;
  v295 = v99;
  [v1 registeredForTestRawData];
  OUTLINED_FUNCTION_9_2();
  if (v107)
  {
    CAFTypeTestWithStatesObservable.testRawData.getter();
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, _s10Foundation4DataVSgMR);
    v106 = OUTLINED_FUNCTION_38_0(v108);
  }

  v292 = v106;
  v293 = v105;
  [v1 registeredForTestEnum];
  OUTLINED_FUNCTION_9_2();
  if (v109)
  {
    v118 = CAFTypeTestWithStatesObservable.testEnum.getter(v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_52_0(v118);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CAFButtonActionVSgMd, &_sSo15CAFButtonActionVSgMR);
    v117 = OUTLINED_FUNCTION_38_0(v119);
  }

  v290 = v117;
  v291 = v110;
  [v1 registeredForTestDimensionUnit];
  OUTLINED_FUNCTION_9_2();
  if (v120)
  {
    v129 = CAFTypeTestWithStatesObservable.testDimensionUnitRawValue.getter(v120, v121, v122, v123, v124, v125, v126, v127);
    OUTLINED_FUNCTION_50_0(v129);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v128 = OUTLINED_FUNCTION_38_0(v130);
  }

  v288 = v128;
  v289 = v121;
  [v1 registeredForTestComplexItem];
  OUTLINED_FUNCTION_9_2();
  if (v131)
  {
    CAFTypeTestWithStatesObservable.testComplexItem.getter(v131, v132, v133, v134, v135);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v136 = OUTLINED_FUNCTION_38_0(v137);
  }

  v286 = v136;
  v287 = v132;
  [v1 registeredForTestArrayBool];
  OUTLINED_FUNCTION_9_2();
  if (v138)
  {
    CAFTypeTestWithStatesObservable.testArrayBool.getter(v138, v139, v140, v141, v142);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGSgMd, &_sSaySbGSgMR);
    v143 = OUTLINED_FUNCTION_38_0(v144);
  }

  v284 = v143;
  v285 = v139;
  [v1 registeredForTestArrayUInt8];
  OUTLINED_FUNCTION_9_2();
  if (v145)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt8.getter(v145, v146, v147, v148, v149);
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGSgMd, &_sSays5UInt8VGSgMR);
    v150 = OUTLINED_FUNCTION_38_0(v151);
  }

  v282 = v150;
  v283 = v146;
  [v1 registeredForTestArrayUInt16];
  OUTLINED_FUNCTION_9_2();
  if (v152)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt16.getter(v152, v153, v154, v155, v156);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGSgMd, &_sSays6UInt16VGSgMR);
    v157 = OUTLINED_FUNCTION_38_0(v158);
  }

  v280 = v157;
  v281 = v153;
  [v1 registeredForTestArrayUInt32];
  OUTLINED_FUNCTION_9_2();
  if (v159)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt32.getter(v159, v160, v161, v162, v163);
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGSgMd, &_sSays6UInt32VGSgMR);
    v164 = OUTLINED_FUNCTION_38_0(v165);
  }

  v278 = v164;
  v279 = v160;
  [v1 registeredForTestArrayUInt64];
  OUTLINED_FUNCTION_9_2();
  if (v166)
  {
    CAFTypeTestWithStatesObservable.testArrayUInt64.getter(v166, v167, v168, v169, v170);
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGSgMd, &_sSays6UInt64VGSgMR);
    v171 = OUTLINED_FUNCTION_38_0(v172);
  }

  v276 = v171;
  v277 = v167;
  [v1 registeredForTestArrayInt8];
  OUTLINED_FUNCTION_9_2();
  if (v173)
  {
    CAFTypeTestWithStatesObservable.testArrayInt8.getter(v173, v174, v175, v176, v177);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGSgMd, &_sSays4Int8VGSgMR);
    v178 = OUTLINED_FUNCTION_38_0(v179);
  }

  v274 = v178;
  v275 = v174;
  [v1 registeredForTestArrayInt16];
  OUTLINED_FUNCTION_9_2();
  if (v180)
  {
    CAFTypeTestWithStatesObservable.testArrayInt16.getter(v180, v181, v182, v183, v184);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGSgMd, &_sSays5Int16VGSgMR);
    v185 = OUTLINED_FUNCTION_38_0(v186);
  }

  v272 = v185;
  v273 = v181;
  [v1 registeredForTestArrayInt32];
  OUTLINED_FUNCTION_9_2();
  if (v187)
  {
    CAFTypeTestWithStatesObservable.testArrayInt32.getter(v187, v188, v189, v190, v191);
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGSgMd, &_sSays5Int32VGSgMR);
    v192 = OUTLINED_FUNCTION_38_0(v193);
  }

  v270 = v192;
  v271 = v188;
  [v1 registeredForTestArrayInt64];
  OUTLINED_FUNCTION_9_2();
  if (v194)
  {
    CAFTypeTestWithStatesObservable.testArrayInt64.getter(v194, v195, v196, v197, v198);
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGSgMd, &_sSays5Int64VGSgMR);
    v199 = OUTLINED_FUNCTION_38_0(v200);
  }

  v268 = v199;
  v269 = v195;
  [v1 registeredForTestArrayFloat];
  OUTLINED_FUNCTION_9_2();
  if (v201)
  {
    CAFTypeTestWithStatesObservable.testArrayFloat.getter(v201, v202, v203, v204, v205);
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGSgMd, &_sSaySfGSgMR);
    v206 = OUTLINED_FUNCTION_38_0(v207);
  }

  v266 = v206;
  v267 = v202;
  [v1 registeredForTestArrayString];
  OUTLINED_FUNCTION_9_2();
  if (v208)
  {
    CAFTypeTestWithStatesObservable.testArrayString.getter(v208, v209, v210, v211, v212);
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v213 = OUTLINED_FUNCTION_38_0(v214);
  }

  v264 = v213;
  v265 = v209;
  v215 = [v1 registeredForTestArrayData];
  v220 = 0x73696765726E753CLL;
  v221 = 0xEE003E6465726574;
  if (v215)
  {
    CAFTypeTestWithStatesObservable.testArrayData.getter(v215, v216, v217, v218, v219);
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v220 = OUTLINED_FUNCTION_38_0(v222);
    v221 = v223;
  }

  v263 = v220;
  v224 = [v1 registeredForTestArrayRawData];
  v225 = 0x73696765726E753CLL;
  v226 = 0xEE003E6465726574;
  if (v224)
  {
    CAFTypeTestWithStatesObservable.testArrayRawData.getter();
    v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGSgMd, &_sSay10Foundation4DataVGSgMR);
    v225 = OUTLINED_FUNCTION_38_0(v227);
    v226 = v228;
  }

  v262 = v225;
  v229 = [v1 registeredForTestComplexItems];
  v234 = 0x73696765726E753CLL;
  v235 = 0xEE003E6465726574;
  if (v229)
  {
    CAFTypeTestWithStatesObservable.testComplexItems.getter(v229, v230, v231, v232, v233);
    v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    v234 = OUTLINED_FUNCTION_38_0(v236);
    v235 = v237;
  }

  v261 = v234;
  v238 = [v1 registeredForTestComplexItemValue];
  v243 = 0x73696765726E753CLL;
  v244 = 0xEE003E6465726574;
  if (v238)
  {
    CAFTypeTestWithStatesObservable.testComplexItemValue.getter(v238, v239, v240, v241, v242);
    v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CAFTestComplexItemCSgMd, &_sSo18CAFTestComplexItemCSgMR);
    v243 = OUTLINED_FUNCTION_38_0(v245);
    v244 = v246;
  }

  v260 = v243;
  v247 = [v1 registeredForTestComplexItemList];
  if (v247)
  {
    CAFTypeTestWithStatesObservable.testComplexItemList.getter(v247, v248, v249, v250, v251);
    v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19CAFTestComplexItemsCSgMd, &_sSo19CAFTestComplexItemsCSgMR);
    OUTLINED_FUNCTION_38_0(v252);
  }

  _StringGuts.grow(_:)(640);
  MEMORY[0x245D0A530](0xD000000000000022, 0x80000002423112E0);
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v315, v316);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x495574736574202CLL);
  MEMORY[0x245D0A530](v16, v314);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v312, v313);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v310, v311);

  OUTLINED_FUNCTION_71_1();
  MEMORY[0x245D0A530](v308, v309);

  MEMORY[0x245D0A530](0x6E4974736574202CLL, 0xEC000000203A3874);
  MEMORY[0x245D0A530](v306, v307);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v304, v305);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v302, v303);

  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530](0x6E4974736574202CLL);
  MEMORY[0x245D0A530](v300, v301);

  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v298, v299);

  v253 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v253 & 0xFFFFFFFFFFFFLL | 0x7453000000000000, 0xEE00203A676E6972);
  MEMORY[0x245D0A530](v296, v297);

  v254 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v254 & 0xFFFFFFFFFFFFLL | 0x6144000000000000, 0xEC000000203A6174);
  MEMORY[0x245D0A530](v294, v295);

  v255 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v255 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF203A6174614477);
  MEMORY[0x245D0A530](v292, v293);

  v256 = OUTLINED_FUNCTION_25_4();
  MEMORY[0x245D0A530](v256 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000, v257 | 0xEC000000203A6174);
  MEMORY[0x245D0A530](v290, v291);

  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242310E70);
  MEMORY[0x245D0A530](v288, v289);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v286, v287);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310EB0);
  MEMORY[0x245D0A530](v284, v285);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v282, v283);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v280, v281);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v278, v279);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v276, v277);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242310F50);
  MEMORY[0x245D0A530](v274, v275);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v272, v273);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v270, v271);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v268, v269);

  OUTLINED_FUNCTION_2_26();
  MEMORY[0x245D0A530](v266, v267);

  OUTLINED_FUNCTION_37_0();
  MEMORY[0x245D0A530](v264, v265);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311010);
  MEMORY[0x245D0A530](v263, v221);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311030);
  MEMORY[0x245D0A530](v262, v226);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311050);
  MEMORY[0x245D0A530](v261, v235);

  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242311070);
  MEMORY[0x245D0A530](v260, v244);

  MEMORY[0x245D0A530](0xD000000000000017, 0x8000000242311090);
  v258 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v258);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTypeTestWithStatesObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFTypeTestWithStatesObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

void CAFTypeTestWithStatesObservable.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_90_0();
  a16 = v18;
  a17 = v19;
  v20 = v17;
  v22 = v21;
  v23 = &v17[OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescription];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *&v20[v24] = v25;
  v26 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testBool;
  swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSbSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSbSgGMR);
  OUTLINED_FUNCTION_225(v27);
  OUTLINED_FUNCTION_0_7();
  *&v20[v26] = specialized SafePublished.init(observedValuekeypath:)();
  v28 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt8;
  swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5UInt8VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5UInt8VSgGMR);
  OUTLINED_FUNCTION_225(v29);
  v30 = OUTLINED_FUNCTION_0_7();
  *&v20[v28] = specialized SafePublished.init(observedValuekeypath:)(v30);
  v31 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt16;
  swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt16VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt16VSgGMR);
  OUTLINED_FUNCTION_225(v32);
  v33 = OUTLINED_FUNCTION_0_7();
  *&v20[v31] = specialized SafePublished.init(observedValuekeypath:)(v33);
  v34 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt32;
  swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt32VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt32VSgGMR);
  OUTLINED_FUNCTION_225(v35);
  v36 = OUTLINED_FUNCTION_0_7();
  *&v20[v34] = specialized SafePublished.init(observedValuekeypath:)(v36);
  v37 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testUInt64;
  swift_getKeyPath();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt64VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs6UInt64VSgGMR);
  OUTLINED_FUNCTION_225(v38);
  v39 = OUTLINED_FUNCTION_0_7();
  *&v20[v37] = specialized SafePublished.init(observedValuekeypath:)(v39);
  v40 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt8;
  swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs4Int8VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs4Int8VSgGMR);
  OUTLINED_FUNCTION_225(v41);
  v42 = OUTLINED_FUNCTION_0_7();
  *&v20[v40] = specialized SafePublished.init(observedValuekeypath:)(v42);
  v43 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt16;
  swift_getKeyPath();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int16VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int16VSgGMR);
  OUTLINED_FUNCTION_225(v44);
  v45 = OUTLINED_FUNCTION_0_7();
  *&v20[v43] = specialized SafePublished.init(observedValuekeypath:)(v45);
  v46 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt32;
  swift_getKeyPath();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int32VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int32VSgGMR);
  OUTLINED_FUNCTION_225(v47);
  v48 = OUTLINED_FUNCTION_0_7();
  *&v20[v46] = specialized SafePublished.init(observedValuekeypath:)(v48);
  v49 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testInt64;
  swift_getKeyPath();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int64VSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCs5Int64VSgGMR);
  OUTLINED_FUNCTION_225(v50);
  v51 = OUTLINED_FUNCTION_0_7();
  *&v20[v49] = specialized SafePublished.init(observedValuekeypath:)(v51);
  v52 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testFloat;
  swift_getKeyPath();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSfSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSfSgGMR);
  OUTLINED_FUNCTION_225(v53);
  v54 = OUTLINED_FUNCTION_0_7();
  *&v20[v52] = specialized SafePublished.init(observedValuekeypath:)(v54);
  v55 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testString;
  swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSSSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSSSgGMR);
  OUTLINED_FUNCTION_225(v56);
  OUTLINED_FUNCTION_0_7();
  *&v20[v55] = specialized SafePublished.init(observedValuekeypath:)();
  v57 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testData;
  swift_getKeyPath();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v58);
  OUTLINED_FUNCTION_0_7();
  *&v20[v57] = specialized SafePublished.init(observedValuekeypath:)();
  v59 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testRawData;
  swift_getKeyPath();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableC10Foundation4DataVSgGMR);
  OUTLINED_FUNCTION_225(v60);
  OUTLINED_FUNCTION_0_7();
  *&v20[v59] = specialized SafePublished.init(observedValuekeypath:)();
  v61 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testEnum;
  swift_getKeyPath();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo15CAFButtonActionVSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo15CAFButtonActionVSgGMR);
  OUTLINED_FUNCTION_225(v62);
  v63 = OUTLINED_FUNCTION_0_7();
  *&v20[v61] = specialized SafePublished.init(observedValuekeypath:)(v63);
  v64 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testDimensionUnitRawValue;
  swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo11CAFUnitTypeVSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo11CAFUnitTypeVSgGMR);
  OUTLINED_FUNCTION_225(v65);
  v66 = OUTLINED_FUNCTION_0_7();
  *&v20[v64] = specialized SafePublished.init(observedValuekeypath:)(v66);
  v67 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItem;
  swift_getKeyPath();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo18CAFTestComplexItemCSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo18CAFTestComplexItemCSgGMR);
  OUTLINED_FUNCTION_225(v68);
  OUTLINED_FUNCTION_0_7();
  *&v20[v67] = specialized SafePublished.init(observedValuekeypath:)();
  v69 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayBool;
  swift_getKeyPath();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySbGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySbGSgGMR);
  OUTLINED_FUNCTION_225(v70);
  OUTLINED_FUNCTION_0_7();
  *&v20[v69] = specialized SafePublished.init(observedValuekeypath:)();
  v71 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt8;
  swift_getKeyPath();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5UInt8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5UInt8VGSgGMR);
  OUTLINED_FUNCTION_225(v72);
  OUTLINED_FUNCTION_0_7();
  *&v20[v71] = specialized SafePublished.init(observedValuekeypath:)();
  v73 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt16;
  swift_getKeyPath();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt16VGSgGMR);
  OUTLINED_FUNCTION_225(v74);
  OUTLINED_FUNCTION_0_7();
  *&v20[v73] = specialized SafePublished.init(observedValuekeypath:)();
  v75 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt32;
  swift_getKeyPath();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt32VGSgGMR);
  OUTLINED_FUNCTION_225(v76);
  OUTLINED_FUNCTION_0_7();
  *&v20[v75] = specialized SafePublished.init(observedValuekeypath:)();
  v77 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayUInt64;
  swift_getKeyPath();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays6UInt64VGSgGMR);
  OUTLINED_FUNCTION_225(v78);
  OUTLINED_FUNCTION_0_7();
  *&v20[v77] = specialized SafePublished.init(observedValuekeypath:)();
  v79 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt8;
  swift_getKeyPath();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays4Int8VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays4Int8VGSgGMR);
  OUTLINED_FUNCTION_225(v80);
  OUTLINED_FUNCTION_0_7();
  *&v20[v79] = specialized SafePublished.init(observedValuekeypath:)();
  v81 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt16;
  swift_getKeyPath();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int16VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int16VGSgGMR);
  OUTLINED_FUNCTION_225(v82);
  OUTLINED_FUNCTION_0_7();
  *&v20[v81] = specialized SafePublished.init(observedValuekeypath:)();
  v83 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt32;
  swift_getKeyPath();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int32VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int32VGSgGMR);
  OUTLINED_FUNCTION_225(v84);
  OUTLINED_FUNCTION_0_7();
  *&v20[v83] = specialized SafePublished.init(observedValuekeypath:)();
  v85 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayInt64;
  swift_getKeyPath();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int64VGSgGMd, &_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSays5Int64VGSgGMR);
  OUTLINED_FUNCTION_225(v86);
  OUTLINED_FUNCTION_0_7();
  *&v20[v85] = specialized SafePublished.init(observedValuekeypath:)();
  v87 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayFloat;
  swift_getKeyPath();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySfGSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySfGSgGMR);
  OUTLINED_FUNCTION_225(v88);
  OUTLINED_FUNCTION_0_7();
  *&v20[v87] = specialized SafePublished.init(observedValuekeypath:)();
  v89 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayString;
  swift_getKeyPath();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySSGSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSaySSGSgGMR);
  OUTLINED_FUNCTION_225(v90);
  OUTLINED_FUNCTION_0_7();
  *&v20[v89] = specialized SafePublished.init(observedValuekeypath:)();
  v91 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayData;
  swift_getKeyPath();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v92);
  OUTLINED_FUNCTION_0_7();
  *&v20[v91] = specialized SafePublished.init(observedValuekeypath:)();
  v93 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayRawData;
  swift_getKeyPath();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFTypeTestWithStatesObservableCSay10Foundation4DataVGSgGMR);
  OUTLINED_FUNCTION_225(v94);
  OUTLINED_FUNCTION_0_7();
  *&v20[v93] = specialized SafePublished.init(observedValuekeypath:)();
  v95 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItems;
  swift_getKeyPath();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo19CAFTestComplexItemsCSgGMd, _s10CAFCombine13SafePublishedCyAA31CAFTypeTestWithStatesObservableCSo19CAFTestComplexItemsCSgGMR);
  OUTLINED_FUNCTION_225(v96);
  OUTLINED_FUNCTION_0_7();
  *&v20[v95] = specialized SafePublished.init(observedValuekeypath:)();
  v97 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItemValue;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v97] = specialized SafePublished.init(observedValuekeypath:)();
  v98 = OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testComplexItemList;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v20[v98] = specialized SafePublished.init(observedValuekeypath:)();
  *&v20[OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed] = v22;
  v99 = type metadata accessor for CAFTypeTestWithStatesObservable();
  a9.receiver = v20;
  a9.super_class = v99;
  v100 = v22;
  v101 = objc_msgSendSuper2(&a9, sel_init);
  [v100 registerObserver_];

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestWithStatesObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTypeTestWithStatesObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTypeTestWithStatesObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTypeTestWithStatesObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTypeTestWithStatesObservable@<X0>(void *a1@<X8>)
{
  result = CAFTypeTestWithStatesObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTypeTestWithStatesObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTypeTestWithStatesObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestBool:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_16_3(v2 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testBool, a2);

  specialized SafePublished.value.setter(v3 & 1);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt32:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt64:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v1, v2, v3, v4);
  OUTLINED_FUNCTION_76_0();
  v5 = OUTLINED_FUNCTION_7_5();
  v0(v5);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestFloat:)(float a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_3(v3 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testFloat, a3);

  specialized SafePublished.value.setter(LODWORD(a1));
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestString:)()
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4(v0);

  v1 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v1, v2);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestData:)()
{
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_15_4(v0);
  OUTLINED_FUNCTION_76_0();
  v1 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v1, v2);
  v3 = OUTLINED_FUNCTION_197();
  specialized SafePublished.value.setter(v3, v4);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestRawData:)()
{
  OUTLINED_FUNCTION_46_0();

  v0 = OUTLINED_FUNCTION_197();
  outlined copy of Data?(v0, v1);
  v2 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v2, v3);
}

void @objc CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestData:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_0();
  v21 = v20;
  v22 = v18;
  v35 = v23;
  if (v19)
  {
    v24 = v19;
    v25 = v18;
    v26 = v35;
    v27 = v24;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v31 = v18;
    v32 = v35;
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v21();
  outlined consume of Data?(v28, v30);

  OUTLINED_FUNCTION_91_0();
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt8:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestUInt16:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  OUTLINED_FUNCTION_76_0();
  v0(v1);
}

void CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayBool:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 BOOLValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayUInt8:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 unsignedCharValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

double @objc CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayBool:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

void CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayUInt16:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 unsignedShortValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayInt8:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 charValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_33_1();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

void CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayInt16:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_44_0();
  v13 = v12;
  OUTLINED_FUNCTION_32_3(v14, v12, v15);
  if (!v13 || (v16 = specialized Array._getCount()()) == 0)
  {

LABEL_14:

    specialized SafePublished.value.setter(v29);

    OUTLINED_FUNCTION_43_0();
    return;
  }

  v17 = v16;
  OUTLINED_FUNCTION_41_0();
  v18 = OUTLINED_FUNCTION_8_4();
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20);
  if ((v17 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_10();
    do
    {
      if (v11)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_75_0();
      }

      v22 = v21;
      [v21 shortValue];

      OUTLINED_FUNCTION_12_3();
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_5_17(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v27, v28);
      }

      OUTLINED_FUNCTION_58_0();
    }

    while (!v25);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayUInt32:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v10 = a4;
  v12 = *a3;
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (v10)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        v10 = v26;
      }

      ++v7;
      *(v10 + 16) = v16;
      *(v10 + 4 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayUInt64:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t))
{
  v10 = a4;
  v12 = *a3;
  OUTLINED_FUNCTION_18_3(a1, a2, a3, a4, a5);
  v13 = *(v6 + v12);
  if (!a2 || (v14 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    a6(v24);
  }

  v15 = v14;
  v26 = MEMORY[0x277D84F90];
  v16 = v14 & ~(v14 >> 63);

  v17 = OUTLINED_FUNCTION_11_4();
  result = (v10)(v17);
  if ((v15 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_59_0();
    do
    {
      if (v13)
      {
        v19 = MEMORY[0x245D0A790](v7, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v7 + 32);
      }

      v20 = v19;
      v21 = [v19 *a5];

      OUTLINED_FUNCTION_80_0();
      if (v22)
      {
        OUTLINED_FUNCTION_83_0();
        v23();
        v10 = v26;
      }

      ++v7;
      *(v10 + 16) = v16;
      *(v10 + 8 * a6 + 32) = v21;
    }

    while (v15 != v7);
    a6 = v25;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayFloat:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_3(v2 + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable__testArrayFloat, a2);
  if (!a2 || (v4 = specialized Array._getCount()()) == 0)
  {

LABEL_13:

    specialized SafePublished.value.setter(v18);
  }

  v5 = v4;
  v19 = MEMORY[0x277D84F90];

  v6 = OUTLINED_FUNCTION_11_4();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6, v7, v8);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v19;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_72_0();
      }

      else
      {
        v12 = OUTLINED_FUNCTION_75_0();
      }

      v13 = v12;
      [v12 floatValue];
      v15 = v14;

      v19 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      ++v10;
      *(v11 + 16) = v17 + 1;
      *(v11 + 4 * v17 + 32) = v15;
    }

    while (v5 != v10);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayString:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);

  v0(v1);
}

double @objc CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a1;
  a6();

  return result;
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestArrayRawData:)(uint64_t a1, uint64_t a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTypeTestWithStatesObservable.typeTestWithStatesService(_:didUpdateTestComplexItem:)()
{
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_10_7(v2, v3, v4, v5);
  v6 = v1;

  v0(v1);
}

uint64_t CAFTypeTestWithStatesObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTypeTestWithStatesObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTypeTestWithStatesObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t keypath_get_22Tm_1()
{
  OUTLINED_FUNCTION_15_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t keypath_get_196Tm()
{
  OUTLINED_FUNCTION_15_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFTypeTestWithStates and conformance CAFTypeTestWithStates()
{
  result = lazy protocol witness table cache variable for type CAFTypeTestWithStates and conformance CAFTypeTestWithStates;
  if (!lazy protocol witness table cache variable for type CAFTypeTestWithStates and conformance CAFTypeTestWithStates)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTypeTestWithStates, 0x277CF8730);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTypeTestWithStates and conformance CAFTypeTestWithStates);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTypeTestWithStatesObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTypeTestWithStatesObservable and conformance CAFTypeTestWithStatesObservable(&lazy protocol witness table cache variable for type CAFTypeTestWithStatesObservable and conformance CAFTypeTestWithStatesObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTypeTestWithStatesObservable and conformance CAFTypeTestWithStatesObservable(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTypeTestWithStatesObservable();
    OUTLINED_FUNCTION_23_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFTypeTestWithStatesObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFTypeTestWithStatesObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_SSSgTt3g5(v11, v12, a1, v13, v10, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_72_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA31CAFTypeTestWithStatesObservableC_10Foundation4DataVSgTt3g5(v10, v11, v13, v14, v12, a6, a7, a8, a9, a10);
}

uint64_t CAFTirePressureMonitoringSystemObservable._description.getter()
{
  _StringGuts.grow(_:)(52);
  MEMORY[0x245D0A530](0xD00000000000002CLL, 0x8000000242311390);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFTirePressureMonitoringSystemObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTirePressureMonitoringSystemObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTirePressureMonitoringSystemObservable.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescription];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_observed] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAFTirePressureMonitoringSystemObservable();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v6 registerObserver_];

  return v7;
}

uint64_t CAFTirePressureMonitoringSystemObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTirePressureMonitoringSystemObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTirePressureMonitoringSystemObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTirePressureMonitoringSystemObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTirePressureMonitoringSystemObservable@<X0>(void *a1@<X8>)
{
  result = CAFTirePressureMonitoringSystemObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTirePressureMonitoringSystemObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFTirePressureMonitoringSystemObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFTirePressureMonitoringSystemObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTirePressureMonitoringSystemObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTirePressureMonitoringSystemObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFTirePressureMonitoringSystem()
{
  result = lazy cache variable for type metadata for CAFTirePressureMonitoringSystem;
  if (!lazy cache variable for type metadata for CAFTirePressureMonitoringSystem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFTirePressureMonitoringSystem);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTirePressureMonitoringSystemObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFTirePressureMonitoringSystemObservable and conformance CAFTirePressureMonitoringSystemObservable(&lazy protocol witness table cache variable for type CAFTirePressureMonitoringSystemObservable and conformance CAFTirePressureMonitoringSystemObservable, a2, type metadata accessor for CAFTirePressureMonitoringSystemObservable, &protocol conformance descriptor for CAFTirePressureMonitoringSystemObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTirePressureMonitoringSystemObservable and conformance CAFTirePressureMonitoringSystemObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFTirePressureMonitoringSystemObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine41CAFTirePressureMonitoringSystemObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTirePressure.sensorStateBridged.getter()
{
  v1 = [v0 hasSensorState];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 sensorState];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFTirePressureObservable.sensorState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFTirePressureObservable.pressure.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();
}

uint64_t CAFTirePressureObservable.pressureState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFTirePressureObservable.vehicleLayoutKey.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFTirePressureObservable.$sensorState.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFTirePressureObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMR);
  MEMORY[0x28223BE20](v3);
  v4 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_observed);
  v5 = [v4 registeredForSensorState];
  v6 = 0x73696765726E753CLL;
  v7 = 0xEE003E6465726574;
  if (v5)
  {
    CAFTirePressureObservable.sensorState.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CAFSensorStateVSgMd, _sSo14CAFSensorStateVSgMR);
    v6 = String.init<A>(describing:)();
    v7 = v8;
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v4 registeredForPressure])
  {
    CAFTirePressureObservable.pressure.getter();
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if ([v4 registeredForPressureState])
  {
    CAFTirePressureObservable.pressureState.getter();
    v14 = NSStringFromPressureState();
    if (v14)
    {
      v15 = v14;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v16;
    }

    else
    {
      v13 = 0xE900000000000029;
      v12 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v4 registeredForVehicleLayoutKey])
  {
    v2 = CAFTirePressureObservable.vehicleLayoutKey.getter();
    v1 = v17;
  }

  _StringGuts.grow(_:)(106);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x8000000242311450);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x8000000242311470);
  MEMORY[0x245D0A530](v19, v7);

  MEMORY[0x245D0A530](0x757373657270202CLL, 0xEC000000203A6572);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311490);
  MEMORY[0x245D0A530](v12, v13);

  MEMORY[0x245D0A530](0xD000000000000014, 0x800000024230DB40);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFTirePressureObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFTirePressureObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFTirePressureObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable__sensorState;
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableCSo14CAFSensorStateVSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableCSo14CAFSensorStateVSgGMR);
  OUTLINED_FUNCTION_225(v8);
  v9 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v9, v10, v11, v12, v13, v14, v15, v16, v38.receiver, v38.super_class, v39, v40, v41, v42, v43, v44);
  *&v2[v7] = v17;
  v18 = OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable__pressure;
  swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableC10Foundation11MeasurementVySo06NSUnitG0CGSgGMR);
  OUTLINED_FUNCTION_225(v19);
  OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)();
  *&v2[v18] = v20;
  v21 = OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable__pressureState;
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableCSo16CAFPressureStateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableCSo16CAFPressureStateVGMR);
  OUTLINED_FUNCTION_225(v22);
  v23 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v23, v24, v25, v26, v27, v28, v29, v30, v38.receiver, v38.super_class, v39, v40, v41, v42, v43, v44);
  *&v2[v21] = v31;
  v32 = OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable__vehicleLayoutKey;
  swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFTirePressureObservableCSSGMR);
  OUTLINED_FUNCTION_225(v33);
  OUTLINED_FUNCTION_0_7();
  *&v2[v32] = specialized SafePublished.init(observedValuekeypath:)();
  v34 = OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable__name;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_observed] = a1;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for CAFTirePressureObservable();
  v35 = a1;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  [v35 registerObserver_];

  return v36;
}

uint64_t CAFTirePressureObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTirePressureObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTirePressureObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTirePressureObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTirePressureObservable@<X0>(void *a1@<X8>)
{
  result = CAFTirePressureObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTirePressureObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTirePressureObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTirePressureObservable.tirePressureService(_:didUpdateSensorState:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTirePressureObservable.tirePressureService(_:didUpdatePressure:)()
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFTirePressureObservable.tirePressureService(_:didUpdatePressureState:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTirePressureObservable.tirePressureService(_:didUpdateVehicleLayoutKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_3();

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

double @objc CAFTirePressureObservable.tirePressureService(_:didUpdateVehicleLayoutKey:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFTirePressureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTirePressureObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTirePressureObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFTirePressure.sensorStateBridged : CAFTirePressure@<X0>(_BYTE *a1@<X8>)
{
  result = CAFTirePressure.sensorStateBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t key path getter for CAFTirePressure.pressure : CAFTirePressure@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 pressure];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitPressure, 0x277CCAE38);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFTirePressure and conformance CAFTirePressure()
{
  result = lazy protocol witness table cache variable for type CAFTirePressure and conformance CAFTirePressure;
  if (!lazy protocol witness table cache variable for type CAFTirePressure and conformance CAFTirePressure)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTirePressure, 0x277CF86E0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTirePressure and conformance CAFTirePressure);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTirePressureObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTirePressureObservable and conformance CAFTirePressureObservable(&lazy protocol witness table cache variable for type CAFTirePressureObservable and conformance CAFTirePressureObservable, &protocol conformance descriptor for CAFTirePressureObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTirePressureObservable and conformance CAFTirePressureObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTirePressureObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitPressure>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitPressureCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in CAFTirePressureObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFTirePressureObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFOdometerObservable.distanceKM.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFOdometerObservable.$distanceKM.getter(void *a1)
{

  specialized SafeReadOnlyPublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFOdometerObservable._description.getter()
{
  _StringGuts.grow(_:)(32);
  MEMORY[0x245D0A530](0xD000000000000018, 0x8000000242311510);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x3E7D20207B20, 0xE600000000000000);
  return 0;
}

uint64_t CAFOdometerObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFOdometerObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFOdometerObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable__distanceKM;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFOdometerObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA21CAFOdometerObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMR);
  v9 = swift_allocObject();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath, v9, v10, v11, v12, v13, v14, v15, v28.receiver, v28.super_class, v29, v30, v31, v32, v33, v34, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable__distanceMiles;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v28.receiver, v28.super_class, v29, v30, v31, v32, v33, v34, vars0, vars8);
  *&v2[OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_observed] = a1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for CAFOdometerObservable();
  v25 = a1;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  [v25 registerObserver_];

  return v26;
}

uint64_t CAFOdometerObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFOdometerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFOdometerObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFOdometerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFOdometerObservable@<X0>(void *a1@<X8>)
{
  result = CAFOdometerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFOdometerObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFOdometerObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFOdometerObservable.distanceDisplayService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFOdometerObservable.distanceDisplayService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5();

  return (*(v9 + 8))(v11, v8);
}

uint64_t CAFOdometerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFOdometerObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFOdometerObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFOdometer and conformance CAFOdometer()
{
  result = lazy protocol witness table cache variable for type CAFOdometer and conformance CAFOdometer;
  if (!lazy protocol witness table cache variable for type CAFOdometer and conformance CAFOdometer)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFOdometer, 0x277CF8560);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFOdometer and conformance CAFOdometer);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFOdometerObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFOdometerObservable and conformance CAFOdometerObservable(&lazy protocol witness table cache variable for type CAFOdometerObservable and conformance CAFOdometerObservable, &protocol conformance descriptor for CAFOdometerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFOdometerObservable and conformance CAFOdometerObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFOdometerObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFOdometerObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine21CAFOdometerObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFRemainingRangeObservable.distanceKM.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFRemainingRangeObservable.hidden.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFRemainingRangeObservable.$distanceKM.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFRemainingRangeObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_observed) registeredForHidden])
  {
    CAFRemainingRangeObservable.hidden.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(48);
  MEMORY[0x245D0A530](0xD00000000000001ELL, 0x8000000242311590);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x6564646968207B20, 0xEB00000000203A6ELL);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFRemainingRangeObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFRemainingRangeObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFRemainingRangeObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable__distanceKM;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRemainingRangeObservableC10Foundation11MeasurementVySo12NSUnitLengthCGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v29.receiver, v29.super_class, v30, v31, v32, v33, v34, v35, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable__distanceMiles;
  swift_getKeyPath();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v29.receiver, v29.super_class, v30, v31, v32, v33, v34, v35, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable__hidden;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRemainingRangeObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFRemainingRangeObservableCSbSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_observed] = a1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for CAFRemainingRangeObservable();
  v26 = a1;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  [v26 registerObserver_];

  return v27;
}

uint64_t CAFRemainingRangeObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFRemainingRangeObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFRemainingRangeObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFRemainingRangeObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFRemainingRangeObservable@<X0>(void *a1@<X8>)
{
  result = CAFRemainingRangeObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFRemainingRangeObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFRemainingRangeObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(uint64_t a1, uint64_t a2, void *a3)
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t @objc CAFRemainingRangeObservable.distanceDisplayService(_:didUpdateDistanceKM:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5();

  return (*(v9 + 8))(v11, v8);
}

uint64_t CAFRemainingRangeObservable.remainingRangeService(_:didUpdateHidden:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFRemainingRangeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFRemainingRangeObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFRemainingRangeObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFRemainingRange and conformance CAFRemainingRange()
{
  result = lazy protocol witness table cache variable for type CAFRemainingRange and conformance CAFRemainingRange;
  if (!lazy protocol witness table cache variable for type CAFRemainingRange and conformance CAFRemainingRange)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFRemainingRange, 0x277CF85C8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFRemainingRange and conformance CAFRemainingRange);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFRemainingRangeObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFRemainingRangeObservable and conformance CAFRemainingRangeObservable(&lazy protocol witness table cache variable for type CAFRemainingRangeObservable and conformance CAFRemainingRangeObservable, &protocol conformance descriptor for CAFRemainingRangeObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFRemainingRangeObservable and conformance CAFRemainingRangeObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFRemainingRangeObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFRemainingRangeObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFRemainingRangeObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFTrip.showOdometerBridged.getter()
{
  if ([v0 hasShowOdometer])
  {
    return [v0 showOdometer];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFTripObservable.userVisibleLabel.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFTripObservable.sortOrder.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFTripObservable.averageSpeed.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t key path getter for CAFTripObservable.showOdometer : CAFTripObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFTripObservable.showOdometer.getter();
  *a1 = result;
  return result;
}

uint64_t CAFTripObservable.showOdometer.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable__showOdometer, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFTripObservable.showOdometer.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFTripObservableC_SbSgTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFTripObservable.showOdometer.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable__showOdometer, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFTripObservable.showOdometer.modify;
}

void CAFTripObservable.showOdometer.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA17CAFTripObservableC_SbSgTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFTripObservable.$showOdometer.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable__showOdometer, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFTripObservable.name.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed);

  OUTLINED_FUNCTION_232(v2);

  return v3;
}

uint64_t CAFTripObservable.$userVisibleLabel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_17_3();
  v4 = a2(v3);

  return v4;
}

uint64_t CAFTripObservable._description.getter()
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMd, _s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGSgMR);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v1);
  v43[3] = v43 - v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGSgMR);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v3);
  v43[2] = v43 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v5);
  v43[1] = v43 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGSgMR);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v9);
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed);
  v11 = [v10 registeredForUserVisibleLabel];
  v12 = 0x73696765726E753CLL;
  v13 = 0xEE003E6465726574;
  if (v11)
  {
    v56 = CAFTripObservable.userVisibleLabel.getter();
    v57 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v12 = String.init<A>(describing:)();
  }

  v53 = v12;
  v54 = v13;
  v15 = [v10 registeredForSortOrder];
  v16 = 0x73696765726E753CLL;
  v17 = 0xEE003E6465726574;
  if (v15)
  {
    LOBYTE(v56) = CAFTripObservable.sortOrder.getter();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v51 = v16;
  v52 = v17;
  v18 = [v10 registeredForAverageSpeed];
  v19 = 0x73696765726E753CLL;
  v20 = 0xEE003E6465726574;
  if (v18)
  {
    CAFTripObservable.averageSpeed.getter();
    v19 = String.init<A>(describing:)();
  }

  v49 = v19;
  v50 = v20;
  v21 = [v10 registeredForDistance];
  v22 = 0x73696765726E753CLL;
  v23 = 0xEE003E6465726574;
  if (v21)
  {
    CAFTripObservable.distance.getter();
    v22 = String.init<A>(describing:)();
    v23 = v24;
  }

  v48 = v22;
  v25 = [v10 registeredForDuration];
  v26 = 0x73696765726E753CLL;
  v27 = 0xEE003E6465726574;
  if (v25)
  {
    CAFTripObservable.duration.getter();
    v26 = String.init<A>(describing:)();
    v27 = v28;
  }

  v47 = v26;
  v29 = [v10 registeredForEnergy];
  v30 = 0x73696765726E753CLL;
  v31 = 0xEE003E6465726574;
  if (v29)
  {
    CAFTripObservable.energy.getter();
    v30 = String.init<A>(describing:)();
    v31 = v32;
  }

  v46 = v30;
  v33 = [v10 registeredForEnergyEfficiency];
  v34 = 0x73696765726E753CLL;
  v35 = 0xEE003E6465726574;
  if (v33)
  {
    CAFTripObservable.energyEfficiency.getter();
    v34 = String.init<A>(describing:)();
    v35 = v36;
  }

  v45 = v34;
  v37 = [v10 registeredForFuelEfficiency];
  v38 = 0x73696765726E753CLL;
  v39 = 0xEE003E6465726574;
  if (v37)
  {
    CAFTripObservable.fuelEfficiency.getter();
    v38 = String.init<A>(describing:)();
    v39 = v40;
  }

  v44 = v38;
  if ([v10 registeredForShowOdometer])
  {
    LOBYTE(v56) = CAFTripObservable.showOdometer.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    String.init<A>(describing:)();
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(181);
  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311650);
  v55 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000015, 0x800000024230BD90);
  MEMORY[0x245D0A530](v53, v54);

  MEMORY[0x245D0A530](0x724F74726F73202CLL, 0xED0000203A726564);
  MEMORY[0x245D0A530](v51, v52);

  OUTLINED_FUNCTION_5_18();
  MEMORY[0x245D0A530](v49, v50);

  MEMORY[0x245D0A530](0x6E6174736964202CLL, 0xEC000000203A6563);
  MEMORY[0x245D0A530](v48, v23);

  MEMORY[0x245D0A530](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  MEMORY[0x245D0A530](v47, v27);

  MEMORY[0x245D0A530](0x796772656E65202CLL, 0xEA0000000000203ALL);
  MEMORY[0x245D0A530](v46, v31);

  MEMORY[0x245D0A530](0xD000000000000014, 0x8000000242311690);
  MEMORY[0x245D0A530](v45, v35);

  MEMORY[0x245D0A530](0xD000000000000012, 0x80000002423116B0);
  MEMORY[0x245D0A530](v44, v39);

  OUTLINED_FUNCTION_5_18();
  v41 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v41);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v56;
}

uint64_t CAFTripObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFTripObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

uint64_t CAFTripObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFTripObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFTripObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFTripObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFTripObservable@<X0>(void *a1@<X8>)
{
  result = CAFTripObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFTripObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFTripObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFTripObservable.tripService(_:didUpdateUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFTripObservable.tripService(_:didUpdateSortOrder:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_17_3();
  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFTripObservable.tripService(_:didUpdateAverageSpeed:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_3();
  a4(a2);
}

uint64_t CAFTripObservable.tripService(_:didUpdateShowOdometer:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable__showOdometer, v5);

  specialized SafePublished.value.setter(a2 & 1);
}

uint64_t CAFTripObservable.tripService(_:didUpdateName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_3();

  v3 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v3, v4);
}

uint64_t CAFTripObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFTripObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFTripObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFTrip.averageSpeed : CAFTrip@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 averageSpeed];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t key path getter for CAFTrip.distance : CAFTrip@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 distance];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t key path getter for CAFTrip.duration : CAFTrip@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 duration];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t key path getter for CAFTrip.energy : CAFTrip@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 energy];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, _s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t key path getter for CAFTrip.energyEfficiency : CAFTrip@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 energyEfficiency];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for CAFUnitEnergyEfficiency, 0x277CF8768);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMd, &_s10Foundation11MeasurementVySo23CAFUnitEnergyEfficiencyCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t key path getter for CAFTrip.fuelEfficiency : CAFTrip@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 fuelEfficiency];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitFuelEfficiency, 0x277CCAE08);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMd, &_s10Foundation11MeasurementVySo20NSUnitFuelEfficiencyCGMR);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

unint64_t lazy protocol witness table accessor for type CAFTrip and conformance CAFTrip()
{
  result = lazy protocol witness table cache variable for type CAFTrip and conformance CAFTrip;
  if (!lazy protocol witness table cache variable for type CAFTrip and conformance CAFTrip)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFTrip, 0x277CF8700);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFTrip and conformance CAFTrip);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFTripObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFTripObservable and conformance CAFTripObservable(&lazy protocol witness table cache variable for type CAFTripObservable and conformance CAFTripObservable, &protocol conformance descriptor for CAFTripObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFTripObservable and conformance CAFTripObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFTripObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Measurement<NSUnitFuelEfficiency>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_29();
  (*(v4 + 8))(a1);
  return a1;
}

double partial apply for closure #1 in CAFTripObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine17CAFTripObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_5_18()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFEngineGaugeUIObservable.uiEmphasizedEngineGauge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFEngineGaugeUIObservable.uiSecondaryEngineGaugeHidden.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_observed);

  v2 = v1;
  OUTLINED_FUNCTION_231(v2, v3, v4, v5, v6, v7, v8, v9, v1);

  return v11;
}

uint64_t CAFEngineGaugeUIObservable.$uiEmphasizedEngineGauge.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFEngineGaugeUIObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForUIEmphasizedEngineGauge])
  {
    CAFEngineGaugeUIObservable.uiEmphasizedEngineGauge.getter();
    v6 = NSStringFromUIEmphasizedEngineGauge();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v5 = 0xE900000000000029;
      v4 = 0x6E776F6E6B6E7528;
    }
  }

  if ([v3 registeredForUISecondaryEngineGaugeHidden])
  {
    v9 = CAFEngineGaugeUIObservable.uiSecondaryEngineGaugeHidden.getter();
    if (v9)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v9)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  _StringGuts.grow(_:)(98);
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242311790);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x80000002423117B0);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000020, 0x80000002423117D0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFEngineGaugeUIObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFEngineGaugeUIObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFEngineGaugeUIObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable__uiEmphasizedEngineGauge;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFEngineGaugeUIObservableCSo021CAFUIEmphasizedEngineG0VGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFEngineGaugeUIObservableCSo021CAFUIEmphasizedEngineG0VGMR);
  v9 = swift_allocObject();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(KeyPath, v9, v10, v11, v12, v13, v14, v15, v21.receiver, v21.super_class, v22, v23, v24, v25, vars0, vars8);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable__uiSecondaryEngineGaugeHidden;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFEngineGaugeUIObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA26CAFEngineGaugeUIObservableCSbGMR);
  swift_allocObject();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_observed] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAFEngineGaugeUIObservable();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [v18 registerObserver_];

  return v19;
}

uint64_t CAFEngineGaugeUIObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFEngineGaugeUIObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFEngineGaugeUIObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFEngineGaugeUIObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFEngineGaugeUIObservable@<X0>(void *a1@<X8>)
{
  result = CAFEngineGaugeUIObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFEngineGaugeUIObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFEngineGaugeUIObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFEngineGaugeUIObservable.engineGaugeUIService(_:didUpdateUiEmphasizedEngineGauge:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFEngineGaugeUIObservable.engineGaugeUIService(_:didUpdateUiSecondaryEngineGaugeHidden:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFEngineGaugeUIObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFEngineGaugeUIObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFEngineGaugeUIObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFEngineGaugeUI()
{
  result = lazy cache variable for type metadata for CAFEngineGaugeUI;
  if (!lazy cache variable for type metadata for CAFEngineGaugeUI)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFEngineGaugeUI);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFEngineGaugeUIObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFEngineGaugeUIObservable and conformance CAFEngineGaugeUIObservable(&lazy protocol witness table cache variable for type CAFEngineGaugeUIObservable and conformance CAFEngineGaugeUIObservable, a2, type metadata accessor for CAFEngineGaugeUIObservable, &protocol conformance descriptor for CAFEngineGaugeUIObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFEngineGaugeUIObservable and conformance CAFEngineGaugeUIObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFEngineGaugeUIObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine26CAFEngineGaugeUIObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFUIAppearanceObservable.nightMode.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFUIAppearanceObservable.$nightMode.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t key path getter for CAFUIAppearanceObservable.appearanceMode : CAFUIAppearanceObservable@<X0>(_BYTE *a1@<X8>)
{
  result = CAFUIAppearanceObservable.appearanceMode.getter();
  *a1 = result;
  return result;
}

uint64_t CAFUIAppearanceObservable.appearanceMode.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable__appearanceMode, v8);
  v7 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_observed);

  v1 = v7;
  v2 = swift_readAtKeyPath();
  v4 = *v3;
  v2(&v6, 0);

  return v4;
}

uint64_t CAFUIAppearanceObservable.appearanceMode.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = v10;

  return _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA25CAFUIAppearanceObservableC_So17CAFAppearanceModeVTt3g5(a1, v14, KeyPath, v13, v15, v16, v17, v18, a9, a10);
}

void (*CAFUIAppearanceObservable.appearanceMode.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = swift_getKeyPath();
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_234(v1 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable__appearanceMode, (v3 + 4));
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_observed);
  v3[7] = v4;

  v5 = v4;
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v6(v3, 0);

  *(v3 + 88) = v8;
  return CAFUIAppearanceObservable.appearanceMode.modify;
}

void CAFUIAppearanceObservable.appearanceMode.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  _s10CAFCombine13SafePublishedC18_enclosingInstance7wrapped7storageq_x_s24ReferenceWritableKeyPathCyxq_GAHyxACyxq_GGtcisZAA25CAFUIAppearanceObservableC_So17CAFAppearanceModeVTt3g5(v4, v5, v3, v2, v6, v7, v8, v9, v10, v11);

  free(v1);
}

uint64_t CAFUIAppearanceObservable.$appearanceMode.getter()
{
  OUTLINED_FUNCTION_234(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable__appearanceMode, v4);

  specialized SafePublished.projectedValue.getter();
  v2 = v1;

  return v2;
}

uint64_t CAFUIAppearanceObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForNightMode])
  {
    v6 = CAFUIAppearanceObservable.nightMode.getter();
    if (v6)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v6)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if ([v3 registeredForAppearanceMode])
  {
    CAFUIAppearanceObservable.appearanceMode.getter();
    v7 = NSStringFromAppearanceMode();
    if (v7)
    {
      v8 = v7;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v9;
    }

    else
    {
      v1 = 0xE900000000000029;
      v2 = 0x6E776F6E6B6E7528;
    }
  }

  _StringGuts.grow(_:)(69);
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x8000000242311890);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746867696E207B20, 0xEE00203A65646F4DLL);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000012, 0x80000002423118B0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFUIAppearanceObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFUIAppearanceObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFUIAppearanceObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable__nightMode;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFUIAppearanceObservableCSbGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFUIAppearanceObservableCSbGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable__appearanceMode;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine13SafePublishedCyAA25CAFUIAppearanceObservableCSo17CAFAppearanceModeVGMd, _s10CAFCombine13SafePublishedCyAA25CAFUIAppearanceObservableCSo17CAFAppearanceModeVGMR);
  v10 = swift_allocObject();
  specialized SafePublished.init(observedValuekeypath:)(KeyPath, v10, v11, v12, v13, v14, v15, v16, v21.receiver, v21.super_class, v22, v23, v24, v25, vars0, vars8);
  *&v2[v8] = v17;
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_observed] = a1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAFUIAppearanceObservable();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  [v18 registerObserver_];

  return v19;
}

uint64_t CAFUIAppearanceObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFUIAppearanceObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIAppearanceObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFUIAppearanceObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFUIAppearanceObservable@<X0>(void *a1@<X8>)
{
  result = CAFUIAppearanceObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFUIAppearanceObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFUIAppearanceObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFUIAppearanceObservable.uiAppearanceService(_:didUpdateNightMode:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFUIAppearanceObservable.uiAppearanceService(_:didUpdateAppearanceMode:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_234(v2 + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable__appearanceMode, v5);

  specialized SafePublished.value.setter(a2);
}

uint64_t CAFUIAppearanceObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFUIAppearanceObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFUIAppearanceObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFUIAppearance()
{
  result = lazy cache variable for type metadata for CAFUIAppearance;
  if (!lazy cache variable for type metadata for CAFUIAppearance)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFUIAppearance);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFUIAppearanceObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFUIAppearanceObservable and conformance CAFUIAppearanceObservable(&lazy protocol witness table cache variable for type CAFUIAppearanceObservable and conformance CAFUIAppearanceObservable, a2, type metadata accessor for CAFUIAppearanceObservable, &protocol conformance descriptor for CAFUIAppearanceObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIAppearanceObservable and conformance CAFUIAppearanceObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFUIAppearanceObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFUIAppearanceObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFUIConfigurationObservable.configurationIdentifier.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFUIConfigurationObservable.configurationOptions.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFUIConfigurationObservable.$configurationIdentifier.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFUIConfigurationObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForConfigurationIdentifier])
  {
    v4 = CAFUIConfigurationObservable.configurationIdentifier.getter();
    v5 = v6;
  }

  if ([v3 registeredForConfigurationOptions])
  {
    CAFUIConfigurationObservable.configurationOptions.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v7;
  }

  _StringGuts.grow(_:)(92);
  MEMORY[0x245D0A530](0xD00000000000001FLL, 0x8000000242311970);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x8000000242311990);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000018, 0x80000002423119B0);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFUIConfigurationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFUIConfigurationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFUIConfigurationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable__configurationIdentifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFUIConfigurationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFUIConfigurationObservableCSSGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable__configurationOptions;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFUIConfigurationObservableCSaySSGSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA28CAFUIConfigurationObservableCSaySSGSgGMR);
  swift_allocObject();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_observed] = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CAFUIConfigurationObservable();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v9 registerObserver_];

  return v10;
}

uint64_t CAFUIConfigurationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFUIConfigurationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIConfigurationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFUIConfigurationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFUIConfigurationObservable@<X0>(void *a1@<X8>)
{
  result = CAFUIConfigurationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFUIConfigurationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFUIConfigurationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFUIConfigurationObservable.uiConfigurationService(_:didUpdateConfigurationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFUIConfigurationObservable.uiConfigurationService(_:didUpdateConfigurationOptions:)(uint64_t a1, uint64_t a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFUIConfigurationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFUIConfigurationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFUIConfigurationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFUIConfiguration.configurationIdentifier : CAFUIConfiguration(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configurationIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path getter for CAFUIConfiguration.configurationOptions : CAFUIConfiguration(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configurationOptions];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

unint64_t type metadata accessor for CAFUIConfiguration()
{
  result = lazy cache variable for type metadata for CAFUIConfiguration;
  if (!lazy cache variable for type metadata for CAFUIConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFUIConfiguration);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFUIConfigurationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFUIConfigurationObservable and conformance CAFUIConfigurationObservable(&lazy protocol witness table cache variable for type CAFUIConfigurationObservable and conformance CAFUIConfigurationObservable, a2, type metadata accessor for CAFUIConfigurationObservable, &protocol conformance descriptor for CAFUIConfigurationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIConfigurationObservable and conformance CAFUIConfigurationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFUIConfigurationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine28CAFUIConfigurationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFUIInputDeviceButtonObservable.uiInputDevicePurpose.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFUIInputDeviceButtonObservable.name.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFUIInputDeviceButtonObservable.$uiInputDevicePurpose.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFUIInputDeviceButtonObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_observed) registeredForUIInputDeviceButtonEvent])
  {
    CAFUIInputDeviceButtonObservable.uiInputDeviceButtonEvent.getter();
    v1 = NSStringFromUIInputDeviceButtonEvent();
    if (v1)
    {
      v2 = v1;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v5 = 0xE900000000000029;
      v3 = 0x6E776F6E6B6E7528;
    }
  }

  else
  {
    v5 = 0xEE003E6465726574;
    v3 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(71);
  MEMORY[0x245D0A530](0xD000000000000023, 0x8000000242311A80);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001DLL, 0x8000000242311AB0);
  MEMORY[0x245D0A530](v3, v5);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFUIInputDeviceButtonObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFUIInputDeviceButtonObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFUIInputDeviceButtonObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable__uiInputDevicePurpose;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFUIInputDeviceButtonObservableCSo0fG7PurposeVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFUIInputDeviceButtonObservableCSo0fG7PurposeVGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v31.receiver, v31.super_class, v32, v33, v34, v35, vars0, vars8);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable__uiInputDeviceButtonEvent;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFUIInputDeviceButtonObservableCSo0fgH5EventVGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFUIInputDeviceButtonObservableCSo0fgH5EventVGMR);
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v18, v19, v20, v21, v22, v23, v24, v25, v31.receiver, v31.super_class, v32, v33, v34, v35, vars0, vars8);
  *&v2[v17] = v26;
  v27 = OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable__name;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFUIInputDeviceButtonObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA32CAFUIInputDeviceButtonObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v27] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFUIInputDeviceButtonObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFUIInputDeviceButtonObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFUIInputDeviceButtonObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIInputDeviceButtonObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFUIInputDeviceButtonObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFUIInputDeviceButtonObservable@<X0>(void *a1@<X8>)
{
  result = CAFUIInputDeviceButtonObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFUIInputDeviceButtonObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFUIInputDeviceButtonObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFUIInputDeviceButtonObservable.uIInputDeviceService(_:didUpdateUiInputDevicePurpose:)(uint64_t a1, unsigned __int8 a2, void *a3, void (*a4)(void))
{

  a4(a2);
}

uint64_t CAFUIInputDeviceButtonObservable.uiInputDeviceButtonService(_:didUpdateName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFUIInputDeviceButtonObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFUIInputDeviceButtonObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFUIInputDeviceButton()
{
  result = lazy cache variable for type metadata for CAFUIInputDeviceButton;
  if (!lazy cache variable for type metadata for CAFUIInputDeviceButton)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFUIInputDeviceButton);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFUIInputDeviceButtonObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFUIInputDeviceButtonObservable and conformance CAFUIInputDeviceButtonObservable(&lazy protocol witness table cache variable for type CAFUIInputDeviceButtonObservable and conformance CAFUIInputDeviceButtonObservable, a2, type metadata accessor for CAFUIInputDeviceButtonObservable, &protocol conformance descriptor for CAFUIInputDeviceButtonObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIInputDeviceButtonObservable and conformance CAFUIInputDeviceButtonObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFUIInputDeviceButtonObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine32CAFUIInputDeviceButtonObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFUIState.driverSideBridged.getter()
{
  v1 = [v0 hasDriverSide];
  v2 = v1;
  if (v1)
  {
    v1 = [v0 driverSide];
  }

  return v1 | ((v2 ^ 1) << 8);
}

uint64_t CAFUIStateObservable.uiSceneState.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFUIStateObservable.uiSceneOptions.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFUIStateObservable.driverSide.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4 | (v5 << 8);
}

uint64_t CAFUIStateObservable.$uiSceneState.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFUIStateObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_observed);
  v4 = 0x73696765726E753CLL;
  v5 = 0xEE003E6465726574;
  if ([v3 registeredForUISceneState])
  {
    CAFUIStateObservable.uiSceneState.getter();
    v6 = NSStringFromUISceneState();
    if (v6)
    {
      v7 = v6;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v8;
    }

    else
    {
      v5 = 0xE900000000000029;
      v4 = 0x6E776F6E6B6E7528;
    }
  }

  v9 = 0x73696765726E753CLL;
  v10 = 0xEE003E6465726574;
  if ([v3 registeredForUISceneOptions])
  {
    CAFUIStateObservable.uiSceneOptions.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSgMd, &_sSaySSGSgMR);
    v9 = String.init<A>(describing:)();
    v10 = v11;
  }

  if ([v3 registeredForDriverSide])
  {
    CAFUIStateObservable.driverSide.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CAFDriverSideVSgMd, &_sSo13CAFDriverSideVSgMR);
    v2 = String.init<A>(describing:)();
    v1 = v12;
  }

  _StringGuts.grow(_:)(83);
  MEMORY[0x245D0A530](0xD000000000000017, 0x8000000242311B50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000011, 0x8000000242311B70);
  MEMORY[0x245D0A530](v4, v5);

  MEMORY[0x245D0A530](0xD000000000000012, 0x8000000242311B90);
  MEMORY[0x245D0A530](v9, v10);

  MEMORY[0x245D0A530](0x726576697264202CLL, 0xEE00203A65646953);
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFUIStateObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFUIStateObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFUIStateObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable__uiSceneState;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFUIStateObservableCSo15CAFUISceneStateVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFUIStateObservableCSo15CAFUISceneStateVGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v31.receiver, v31.super_class, v32, v33, v34, v35, vars0, vars8);
  *&v2[v7] = v16;
  v17 = OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable__uiSceneOptions;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFUIStateObservableCSaySSGSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFUIStateObservableCSaySSGSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v17] = specialized SafePublished.init(observedValuekeypath:)();
  v18 = OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable__driverSide;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFUIStateObservableCSo13CAFDriverSideVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA20CAFUIStateObservableCSo13CAFDriverSideVSgGMR);
  swift_allocObject();
  v19 = OUTLINED_FUNCTION_0_7();
  specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v19, v20, v21, v22, v23, v24, v25, v26, v31.receiver, v31.super_class, v32, v33, v34, v35, vars0, vars8);
  *&v2[v18] = v27;
  *&v2[OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_observed] = a1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for CAFUIStateObservable();
  v28 = a1;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  [v28 registerObserver_];

  return v29;
}

uint64_t CAFUIStateObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFUIStateObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFUIStateObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFUIStateObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFUIStateObservable@<X0>(void *a1@<X8>)
{
  result = CAFUIStateObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFUIStateObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFUIStateObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFUIStateObservable.uiStateService(_:didUpdateUiSceneState:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFUIStateObservable.uiStateService(_:didUpdateUiSceneOptions:)(uint64_t a1, uint64_t a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFUIStateObservable.uiStateService(_:didUpdateDriverSide:)(uint64_t a1, unsigned __int8 a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2);
}

uint64_t CAFUIStateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFUIStateObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFUIStateObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFUIState.uiSceneOptions : CAFUIState(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uiSceneOptions];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t key path getter for CAFUIState.driverSideBridged : CAFUIState@<X0>(_BYTE *a1@<X8>)
{
  result = CAFUIState.driverSideBridged.getter();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFUIState()
{
  result = lazy cache variable for type metadata for CAFUIState;
  if (!lazy cache variable for type metadata for CAFUIState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFUIState);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFUIStateObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFUIStateObservable and conformance CAFUIStateObservable(&lazy protocol witness table cache variable for type CAFUIStateObservable and conformance CAFUIStateObservable, a2, type metadata accessor for CAFUIStateObservable, &protocol conformance descriptor for CAFUIStateObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFUIStateObservable and conformance CAFUIStateObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFUIStateObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine20CAFUIStateObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFDisplayedSpeed.showSecondarySpeedBridged.getter()
{
  if ([v0 hasShowSecondarySpeed])
  {
    return [v0 showSecondarySpeed];
  }

  else
  {
    return 2;
  }
}

uint64_t CAFDisplayedSpeedObservable.speed.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();
}

uint64_t CAFDisplayedSpeedObservable.showSecondarySpeed.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFDisplayedSpeedObservable.$speed.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFDisplayedSpeedObservable._description.getter()
{
  v1 = v0;
  v2 = 0xEE003E6465726574;
  v3 = 0x73696765726E753CLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  OUTLINED_FUNCTION_30();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_observed);
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if ([v10 registeredForSpeedMaxKMH])
  {
    CAFDisplayedSpeedObservable.speedMaxKMH.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v13;
    (*(v6 + 8))(v9, v4);
  }

  v14 = [v10 registeredForSpeedMaxMPH];
  v15 = 0x73696765726E753CLL;
  v16 = 0xEE003E6465726574;
  if (v14)
  {
    CAFDisplayedSpeedObservable.speedMaxMPH.getter();
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v17;
    (*(v6 + 8))(v9, v4);
  }

  if ([v10 registeredForShowSecondarySpeed])
  {
    LOBYTE(v21) = CAFDisplayedSpeedObservable.showSecondarySpeed.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v3 = String.init<A>(describing:)();
    v2 = v18;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(94);
  MEMORY[0x245D0A530](0xD00000000000001ELL, 0x8000000242311C60);
  v20[1] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000010, 0x8000000242311C80);
  MEMORY[0x245D0A530](v20[0], v12);

  MEMORY[0x245D0A530](0x4D6465657073202CLL, 0xEF203A48504D7861);
  MEMORY[0x245D0A530](v15, v16);

  MEMORY[0x245D0A530](0xD000000000000016, 0x8000000242311CA0);
  MEMORY[0x245D0A530](v3, v2);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return v21;
}

uint64_t CAFDisplayedSpeedObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDisplayedSpeedObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDisplayedSpeedObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable__speed;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFDisplayedSpeedObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFDisplayedSpeedObservableC10Foundation11MeasurementVySo06NSUnitG0CGGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8, v9, v10, v11, v12, v13, v14, v15, v56.receiver, v56.super_class, v57, v58, v59, v60, v61, v62, vars0, vars8);
  v16 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable__speedKMH;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v17 = OUTLINED_FUNCTION_0_7();
  *&v2[v16] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v17, v18, v19, v20, v21, v22, v23, v24, v56.receiver, v56.super_class, v57, v58, v59, v60, v61, v62, vars0, vars8);
  v25 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable__speedMPH;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v26 = OUTLINED_FUNCTION_0_7();
  *&v2[v25] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v26, v27, v28, v29, v30, v31, v32, v33, v56.receiver, v56.super_class, v57, v58, v59, v60, v61, v62, vars0, vars8);
  v34 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable__speedMaxKMH;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v35 = OUTLINED_FUNCTION_0_7();
  *&v2[v34] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v35, v36, v37, v38, v39, v40, v41, v42, v56.receiver, v56.super_class, v57, v58, v59, v60, v61, v62, vars0, vars8);
  v43 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable__speedMaxMPH;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v44 = OUTLINED_FUNCTION_0_7();
  *&v2[v43] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v44, v45, v46, v47, v48, v49, v50, v51, v56.receiver, v56.super_class, v57, v58, v59, v60, v61, v62, vars0, vars8);
  v52 = OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable__showSecondarySpeed;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFDisplayedSpeedObservableCSbSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFDisplayedSpeedObservableCSbSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v52] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_observed] = a1;
  v56.receiver = v2;
  v56.super_class = type metadata accessor for CAFDisplayedSpeedObservable();
  v53 = a1;
  v54 = objc_msgSendSuper2(&v56, sel_init);
  [v53 registerObserver_];

  return v54;
}

uint64_t CAFDisplayedSpeedObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDisplayedSpeedObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDisplayedSpeedObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDisplayedSpeedObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDisplayedSpeedObservable@<X0>(void *a1@<X8>)
{
  result = CAFDisplayedSpeedObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDisplayedSpeedObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDisplayedSpeedObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t @objc CAFDisplayedSpeedObservable.speedDisplayService(_:didUpdateSpeed:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  OUTLINED_FUNCTION_30();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  a5();

  return (*(v10 + 8))(v13, v8);
}

uint64_t CAFDisplayedSpeedObservable.speedDisplayService(_:didUpdateSpeed:)(uint64_t a1, uint64_t a2, void *a3)
{

  specialized SafeReadOnlyPublished.setValue(_:)();
}

uint64_t CAFDisplayedSpeedObservable.displayedSpeedService(_:didUpdateShowSecondarySpeed:)(uint64_t a1, char a2)
{

  specialized SafeReadOnlyPublished.value.setter(a2 & 1);
}

uint64_t CAFDisplayedSpeedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDisplayedSpeedObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDisplayedSpeedObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFDisplayedSpeed and conformance CAFDisplayedSpeed()
{
  result = lazy protocol witness table cache variable for type CAFDisplayedSpeed and conformance CAFDisplayedSpeed;
  if (!lazy protocol witness table cache variable for type CAFDisplayedSpeed and conformance CAFDisplayedSpeed)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFDisplayedSpeed, 0x277CF8428);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDisplayedSpeed and conformance CAFDisplayedSpeed);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDisplayedSpeedObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFDisplayedSpeedObservable and conformance CAFDisplayedSpeedObservable(&lazy protocol witness table cache variable for type CAFDisplayedSpeedObservable and conformance CAFDisplayedSpeedObservable, &protocol conformance descriptor for CAFDisplayedSpeedObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDisplayedSpeedObservable and conformance CAFDisplayedSpeedObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFDisplayedSpeedObservable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double partial apply for closure #1 in CAFDisplayedSpeedObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFDisplayedSpeedObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFCustomImageArchiveObservable.identifier.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFCustomImageArchiveObservable.$identifier.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFCustomImageArchiveObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_observed) registeredForIdentifier])
  {
    v1 = CAFCustomImageArchiveObservable.identifier.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(56);
  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242311D30);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0x746E656469207B20, 0xEF203A7265696669);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFCustomImageArchiveObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFCustomImageArchiveObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFCustomImageArchiveObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable__identifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFCustomImageArchiveObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFCustomImageArchiveObservableCSSGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_observed] = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for CAFCustomImageArchiveObservable();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v8 registerObserver_];

  return v9;
}

uint64_t CAFCustomImageArchiveObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFCustomImageArchiveObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCustomImageArchiveObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCustomImageArchiveObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCustomImageArchiveObservable@<X0>(void *a1@<X8>)
{
  result = CAFCustomImageArchiveObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCustomImageArchiveObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFCustomImageArchiveObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFCustomImageArchiveObservable.customImageArchiveService(_:didUpdateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFCustomImageArchiveObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFCustomImageArchiveObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFCustomImageArchiveObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFCustomImageArchive.identifier : CAFCustomImageArchive(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t type metadata accessor for CAFCustomImageArchive()
{
  result = lazy cache variable for type metadata for CAFCustomImageArchive;
  if (!lazy cache variable for type metadata for CAFCustomImageArchive)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCustomImageArchive);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCustomImageArchiveObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFCustomImageArchiveObservable and conformance CAFCustomImageArchiveObservable(&lazy protocol witness table cache variable for type CAFCustomImageArchiveObservable and conformance CAFCustomImageArchiveObservable, a2, type metadata accessor for CAFCustomImageArchiveObservable, &protocol conformance descriptor for CAFCustomImageArchiveObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCustomImageArchiveObservable and conformance CAFCustomImageArchiveObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFCustomImageArchiveObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFCustomImageArchiveObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFVehicleInformationObservable.vehicleUserVisibleLabel.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFVehicleInformationObservable.$vehicleUserVisibleLabel.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFVehicleInformationObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_observed) registeredForVehicleUserVisibleLabel])
  {
    v1 = CAFVehicleInformationObservable.vehicleUserVisibleLabel.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(69);
  MEMORY[0x245D0A530](0xD000000000000022, 0x8000000242311DF0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD00000000000001CLL, 0x8000000242311E20);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFVehicleInformationObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFVehicleInformationObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFVehicleInformationObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable__vehicleUserVisibleLabel;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFVehicleInformationObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA31CAFVehicleInformationObservableCSSGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_observed] = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for CAFVehicleInformationObservable();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v8 registerObserver_];

  return v9;
}

uint64_t CAFVehicleInformationObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFVehicleInformationObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFVehicleInformationObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFVehicleInformationObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFVehicleInformationObservable@<X0>(void *a1@<X8>)
{
  result = CAFVehicleInformationObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFVehicleInformationObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFVehicleInformationObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFVehicleInformationObservable.vehicleInformationService(_:didUpdateVehicleUserVisibleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFVehicleInformationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFVehicleInformationObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFVehicleInformationObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFVehicleInformation.vehicleUserVisibleLabel : CAFVehicleInformation(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 vehicleUserVisibleLabel];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t type metadata accessor for CAFVehicleInformation()
{
  result = lazy cache variable for type metadata for CAFVehicleInformation;
  if (!lazy cache variable for type metadata for CAFVehicleInformation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFVehicleInformation);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFVehicleInformationObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFVehicleInformationObservable and conformance CAFVehicleInformationObservable(&lazy protocol witness table cache variable for type CAFVehicleInformationObservable and conformance CAFVehicleInformationObservable, a2, type metadata accessor for CAFVehicleInformationObservable, &protocol conformance descriptor for CAFVehicleInformationObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVehicleInformationObservable and conformance CAFVehicleInformationObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFVehicleInformationObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine31CAFVehicleInformationObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t CAFVehicleVariantObservable.exteriorStyle.getter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_observed);

  OUTLINED_FUNCTION_232(v3);

  return v4;
}

uint64_t CAFVehicleVariantObservable.$exteriorStyle.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFVehicleVariantObservable._description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_observed);
  v2 = [v1 registeredForExteriorStyle];
  v3 = 0x73696765726E753CLL;
  v4 = 0xEE003E6465726574;
  if (v2)
  {
    v3 = CAFVehicleVariantObservable.exteriorStyle.getter();
    v4 = v5;
  }

  v21 = v3;
  v6 = [v1 registeredForInteriorStyle];
  v7 = 0x73696765726E753CLL;
  v8 = 0xEE003E6465726574;
  if (v6)
  {
    v7 = CAFVehicleVariantObservable.interiorStyle.getter();
    v8 = v9;
  }

  v20 = v7;
  v10 = [v1 registeredForVehicleLayout];
  v11 = 0x73696765726E753CLL;
  v12 = 0xEE003E6465726574;
  if (v10)
  {
    CAFVehicleVariantObservable.vehicleLayout.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v11 = String.init<A>(describing:)();
    v12 = v13;
  }

  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if ([v1 registeredForAudioLogo])
  {
    CAFVehicleVariantObservable.audioLogo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    v14 = String.init<A>(describing:)();
    v15 = v16;
  }

  if ([v1 registeredForVehicleLogo])
  {
    CAFVehicleVariantObservable.vehicleLogo.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, _sSSSgMR);
    String.init<A>(describing:)();
  }

  _StringGuts.grow(_:)(125);
  MEMORY[0x245D0A530](0xD00000000000001ELL, 0x8000000242311EF0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000012, 0x8000000242311F10);
  MEMORY[0x245D0A530](v21, v4);

  OUTLINED_FUNCTION_4_23();
  MEMORY[0x245D0A530](v20, v8);

  OUTLINED_FUNCTION_4_23();
  MEMORY[0x245D0A530](v19, v12);

  MEMORY[0x245D0A530](0x4C6F69647561202CLL, 0xED0000203A6F676FLL);
  MEMORY[0x245D0A530](v14, v15);

  MEMORY[0x245D0A530](0x6C6369686576202CLL, 0xEF203A6F676F4C65);
  v17 = OUTLINED_FUNCTION_197();
  MEMORY[0x245D0A530](v17);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFVehicleVariantObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescription + 8))
  {
    v4 = *(v0 + v1);
  }

  else
  {
    *v3 = CAFVehicleVariantObservable._description.getter();
    v3[1] = v5;

    v4 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v4 + 4);

  return OUTLINED_FUNCTION_197();
}

id CAFVehicleVariantObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable__exteriorStyle;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFVehicleVariantObservableCSSGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFVehicleVariantObservableCSSGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  v8 = OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable__interiorStyle;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v8] = specialized SafePublished.init(observedValuekeypath:)();
  v9 = OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable__vehicleLayout;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFVehicleVariantObservableCSSSgGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA27CAFVehicleVariantObservableCSSSgGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafePublished.init(observedValuekeypath:)();
  v10 = OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable__audioLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v10] = specialized SafePublished.init(observedValuekeypath:)();
  v11 = OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable__vehicleLogo;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_observed] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CAFVehicleVariantObservable();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v12 registerObserver_];

  return v13;
}

uint64_t CAFVehicleVariantObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFVehicleVariantObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFVehicleVariantObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFVehicleVariantObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFVehicleVariantObservable@<X0>(void *a1@<X8>)
{
  result = CAFVehicleVariantObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFVehicleVariantObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFVehicleVariantObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFVehicleVariantObservable.vehicleVariantService(_:didUpdateExteriorStyle:)()
{
  OUTLINED_FUNCTION_4_12();

  v0 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v0, v1);
}

double @objc CAFVehicleVariantObservable.vehicleVariantService(_:didUpdateExteriorStyle:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

double @objc CAFVehicleVariantObservable.vehicleVariantService(_:didUpdateVehicleLayout:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();

  return result;
}

uint64_t CAFVehicleVariantObservable.vehicleVariantService(_:didUpdateVehicleLayout:)()
{
  OUTLINED_FUNCTION_4_12();

  v0 = OUTLINED_FUNCTION_197();
  specialized SafeReadOnlyPublished.value.setter(v0, v1);
}

uint64_t CAFVehicleVariantObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFVehicleVariantObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFVehicleVariantObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

unint64_t type metadata accessor for CAFVehicleVariant()
{
  result = lazy cache variable for type metadata for CAFVehicleVariant;
  if (!lazy cache variable for type metadata for CAFVehicleVariant)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFVehicleVariant);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFVehicleVariantObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFVehicleVariantObservable and conformance CAFVehicleVariantObservable(&lazy protocol witness table cache variable for type CAFVehicleVariantObservable and conformance CAFVehicleVariantObservable, a2, type metadata accessor for CAFVehicleVariantObservable, &protocol conformance descriptor for CAFVehicleVariantObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFVehicleVariantObservable and conformance CAFVehicleVariantObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFVehicleVariantObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine27CAFVehicleVariantObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void OUTLINED_FUNCTION_4_23()
{

  JUMPOUT(0x245D0A530);
}

uint64_t CAFDisplayUnits.energyEfficiencyUnitRawValueBridged.getter(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = v4;
  if (v4)
  {
    v4 = [v2 *a2];
  }

  return v4 | ((v5 ^ 1) << 16);
}

uint64_t CAFDisplayUnitsObservable.speedUnitRawValue.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5;
}

uint64_t CAFDisplayUnitsObservable.energyEfficiencyUnitRawValue.getter(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_observed);

  v2 = v4;
  swift_getAtKeyPath();

  return v5 | (v6 << 16);
}

uint64_t CAFDisplayUnitsObservable.$speedUnitRawValue.getter(void *a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3);

  return v4;
}

uint64_t CAFDisplayUnitsObservable._description.getter()
{
  v1 = 0xEE003E6465726574;
  v2 = 0x73696765726E753CLL;
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_observed);
  v4 = [v3 registeredForSpeedUnit];
  v5 = 0x73696765726E753CLL;
  v6 = 0xEE003E6465726574;
  if (v4)
  {
    CAFDisplayUnitsObservable.speedUnitRawValue.getter();
    type metadata accessor for CAFUnitType(0);
    v5 = OUTLINED_FUNCTION_16_4(v7, v8, v9, v10, v11);
    v6 = v12;
  }

  v48 = v5;
  v13 = [v3 registeredForDistanceUnit];
  v14 = 0x73696765726E753CLL;
  v15 = 0xEE003E6465726574;
  if (v13)
  {
    CAFDisplayUnitsObservable.distanceUnitRawValue.getter();
    type metadata accessor for CAFUnitType(0);
    v14 = OUTLINED_FUNCTION_16_4(v16, v17, v18, v19, v20);
    v15 = v21;
  }

  v47 = v14;
  v22 = [v3 registeredForTemperatureUnit];
  v23 = 0x73696765726E753CLL;
  v24 = 0xEE003E6465726574;
  if (v22)
  {
    CAFDisplayUnitsObservable.temperatureUnitRawValue.getter();
    type metadata accessor for CAFUnitType(0);
    v23 = OUTLINED_FUNCTION_16_4(v25, v26, v27, v28, v29);
    v24 = v30;
  }

  v31 = 0x73696765726E753CLL;
  v32 = 0xEE003E6465726574;
  if ([v3 registeredForEnergyEfficiencyUnit])
  {
    CAFDisplayUnitsObservable.energyEfficiencyUnitRawValue.getter();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v31 = OUTLINED_FUNCTION_16_4(v33, v34, v35, v36, v37);
    v32 = v38;
  }

  if ([v3 registeredForFuelEfficiencyUnit])
  {
    CAFDisplayUnitsObservable.fuelEfficiencyUnitRawValue.getter();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CAFUnitTypeVSgMd, &_sSo11CAFUnitTypeVSgMR);
    v2 = OUTLINED_FUNCTION_16_4(v39, v40, v41, v42, v43);
    v1 = v44;
  }

  _StringGuts.grow(_:)(178);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  _print_unlocked<A, B>(_:_:)();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530](0xD000000000000016);
  MEMORY[0x245D0A530](v48, v6);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v47, v15);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v46, v24);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v31, v32);

  OUTLINED_FUNCTION_3_11();
  MEMORY[0x245D0A530]();
  MEMORY[0x245D0A530](v2, v1);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFDisplayUnitsObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFDisplayUnitsObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFDisplayUnitsObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable__speedUnitRawValue;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFDisplayUnitsObservableCSo11CAFUnitTypeVGMd, _s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFDisplayUnitsObservableCSo11CAFUnitTypeVGMR);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_7();
  *&v2[v7] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v8);
  v9 = OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable__distanceUnitRawValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v10 = OUTLINED_FUNCTION_0_7();
  *&v2[v9] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v10);
  v11 = OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable__temperatureUnitRawValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v12 = OUTLINED_FUNCTION_0_7();
  *&v2[v11] = specialized SafeReadOnlyPublished.init(observedValuekeypath:)(v12);
  v13 = OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable__energyEfficiencyUnitRawValue;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFDisplayUnitsObservableCSo11CAFUnitTypeVSgGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA25CAFDisplayUnitsObservableCSo11CAFUnitTypeVSgGMR);
  swift_allocObject();
  v14 = OUTLINED_FUNCTION_0_7();
  *&v2[v13] = specialized SafePublished.init(observedValuekeypath:)(v14);
  v15 = OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable__fuelEfficiencyUnitRawValue;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_9();
  v16 = OUTLINED_FUNCTION_0_7();
  *&v2[v15] = specialized SafePublished.init(observedValuekeypath:)(v16);
  *&v2[OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_observed] = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for CAFDisplayUnitsObservable();
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v17 registerObserver_];

  return v18;
}

uint64_t CAFDisplayUnitsObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id CAFDisplayUnitsObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDisplayUnitsObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDisplayUnitsObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDisplayUnitsObservable@<X0>(void *a1@<X8>)
{
  result = CAFDisplayUnitsObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDisplayUnitsObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFDisplayUnitsObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFDisplayUnitsObservable.displayUnitsService(_:didUpdateSpeedUnitRawValue:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_6_10(a1, a2, a3);
  specialized SafeReadOnlyPublished.value.setter(v3);
}

uint64_t CAFDisplayUnitsObservable.displayUnitsService(_:didUpdateEnergyEfficiencyUnitRawValue:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_6_10(a1, a2, a3);
  specialized SafeReadOnlyPublished.value.setter(v3);
}

uint64_t CAFDisplayUnitsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFDisplayUnitsObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFDisplayUnitsObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t key path getter for CAFDisplayUnits.energyEfficiencyUnitRawValueBridged : CAFDisplayUnits@<X0>(uint64_t a1@<X8>)
{
  result = CAFDisplayUnits.energyEfficiencyUnitRawValueBridged.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t key path getter for CAFDisplayUnits.fuelEfficiencyUnitRawValueBridged : CAFDisplayUnits@<X0>(uint64_t a1@<X8>)
{
  result = CAFDisplayUnits.fuelEfficiencyUnitRawValueBridged.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t type metadata accessor for CAFDisplayUnits()
{
  result = lazy cache variable for type metadata for CAFDisplayUnits;
  if (!lazy cache variable for type metadata for CAFDisplayUnits)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFDisplayUnits);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDisplayUnitsObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFDisplayUnitsObservable and conformance CAFDisplayUnitsObservable(&lazy protocol witness table cache variable for type CAFDisplayUnitsObservable and conformance CAFDisplayUnitsObservable, a2, type metadata accessor for CAFDisplayUnitsObservable, &protocol conformance descriptor for CAFDisplayUnitsObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDisplayUnitsObservable and conformance CAFDisplayUnitsObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFDisplayUnitsObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine25CAFDisplayUnitsObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2, void *a3)
{
}

uint64_t CAFLocaleObservable.languageIdentifier.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_observed);

  v1 = v3;
  swift_getAtKeyPath();

  return v4;
}

uint64_t CAFLocaleObservable.$languageIdentifier.getter()
{

  specialized SafePublished.projectedValue.getter();
  v1 = v0;

  return v1;
}

uint64_t CAFLocaleObservable._description.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_observed) registeredForLanguageIdentifier])
  {
    v1 = CAFLocaleObservable.languageIdentifier.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0xEE003E6465726574;
    v1 = 0x73696765726E753CLL;
  }

  _StringGuts.grow(_:)(52);
  MEMORY[0x245D0A530](0xD000000000000016, 0x8000000242312190);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x245D0A530](0xD000000000000017, 0x80000002423121B0);
  MEMORY[0x245D0A530](v1, v3);

  MEMORY[0x245D0A530](4095264, 0xE300000000000000);
  return 0;
}

uint64_t CAFLocaleObservable.description.getter()
{
  v1 = OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescriptionLock;
  v2 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = (v0 + OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescription);
  if (*(v0 + OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescription + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v1);
  }

  else
  {
    v4 = CAFLocaleObservable._description.getter();
    *v3 = v4;
    v3[1] = v6;

    v5 = *(v0 + v1);
  }

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

id CAFLocaleObservable.init(_:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescription];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescriptionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable__languageIdentifier;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFLocaleObservableCSSGMd, &_s10CAFCombine21SafeReadOnlyPublishedCyAA19CAFLocaleObservableCSSGMR);
  swift_allocObject();
  *&v2[v7] = specialized SafePublished.init(observedValuekeypath:)();
  *&v2[OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_observed] = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for CAFLocaleObservable();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v8 registerObserver_];

  return v9;
}

uint64_t CAFLocaleObservable.resetCachedDescription()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescriptionLock);

  os_unfair_lock_lock(v1 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0();
  os_unfair_lock_unlock(v1 + 4);
}

id CAFLocaleObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFLocaleObservable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFLocaleObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFLocaleObservable@<X0>(void *a1@<X8>)
{
  result = CAFLocaleObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFLocaleObservable@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for CAFLocaleObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t CAFLocaleObservable.localeService(_:didUpdateLanguageIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  specialized SafeReadOnlyPublished.value.setter(a2, a3);
}

uint64_t CAFLocaleObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  result = CAFLocaleObservable.resetCachedDescription()();
  if ((a3 & 1) == 0)
  {

    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

uint64_t CAFLocaleObservable.serviceDidUpdate(_:receivedAllValues:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return specialized CAFObservable.notifyChange()();
  }

  return result;
}

void key path getter for CAFLocale.languageIdentifier : CAFLocale(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 languageIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t type metadata accessor for CAFLocale()
{
  result = lazy cache variable for type metadata for CAFLocale;
  if (!lazy cache variable for type metadata for CAFLocale)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFLocale);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFLocaleObservable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CAFLocaleObservable and conformance CAFLocaleObservable(&lazy protocol witness table cache variable for type CAFLocaleObservable and conformance CAFLocaleObservable, a2, type metadata accessor for CAFLocaleObservable, &protocol conformance descriptor for CAFLocaleObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFLocaleObservable and conformance CAFLocaleObservable(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double partial apply for closure #1 in CAFLocaleObservable.resetCachedDescription()()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10CAFCombine19CAFLocaleObservable_cachedDescription);
  *v1 = 0;
  v1[1] = 0;

  return result;
}

void CAFRange.maximumValue<A>()()
{
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_0_21([v0 maximum]);
}

void CAFRange.minimumValue<A>()()
{
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_0_21([v0 minimum]);
}

Swift::Int CAFRange.StepDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D0A920](v1);
  return Hasher._finalize()();
}

uint64_t CAFRange.extract<A>(from:)(void *a1)
{
  if (swift_dynamicCastMetatype())
  {
    [a1 floatValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 doubleValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 charValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 shortValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 intValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 longLongValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 unsignedCharValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 unsignedShortValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 unsignedIntValue];
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    [a1 unsignedLongLongValue];
    return swift_dynamicCast();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void CAFRange.stepValue<A>()()
{
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_0_21([v0 step]);
}

void CAFInt8Range.centerValue.getter()
{
  v1 = [v0 maximumValue];
  v2 = (v1 + [v0 minimumValue]) * 0.5;
  v3 = v2 - fmod(v2, [v0 stepValue]);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -129.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 128.0)
  {
LABEL_7:
    __break(1u);
  }
}

float CAFFloatRange.centerValue.getter()
{
  [v0 maximumValue];
  v2 = v1;
  [v0 minimumValue];
  v4 = (v2 + v3) * 0.5;
  [v0 stepValue];
  return v4 - fmod(v4, v5);
}

unint64_t lazy protocol witness table accessor for type CAFRange.StepDirection and conformance CAFRange.StepDirection()
{
  result = lazy protocol witness table cache variable for type CAFRange.StepDirection and conformance CAFRange.StepDirection;
  if (!lazy protocol witness table cache variable for type CAFRange.StepDirection and conformance CAFRange.StepDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFRange.StepDirection and conformance CAFRange.StepDirection);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CAFRange.StepDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_21(void *a1)
{

  return CAFRange.extract<A>(from:)(a1);
}

uint64_t CAFPositioned.layoutKey.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = [v2 vehicleLayoutKey];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    CAUVehicleLayoutKey.init(rawValue:)();
    v12 = type metadata accessor for CAUVehicleLayoutKey();
    if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
    {
      outlined destroy of CAUVehicleLayoutKey?(v6);
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_0_22();
      v21 = v16;
      v22 = v15;
      MEMORY[0x245D0A530](v9, v11);
      result = OUTLINED_FUNCTION_1_52("Fatal error", v17, v18, v21, v22, "CAFCombine/CAFPositioned+CarAssetUtils.swift", v19, v20, 20, 0);
      __break(1u);
    }

    else
    {

      (*(*(v12 - 8) + 32))(a1, v6, v12);
      return __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
    }
  }

  else
  {
    v14 = type metadata accessor for CAUVehicleLayoutKey();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
  }

  return result;
}

uint64_t CAFPositionedRequired.layoutKey.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMd, &_s13CarAssetUtils19CAUVehicleLayoutKeyOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = [v2 vehicleLayoutKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  CAUVehicleLayoutKey.init(rawValue:)();
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v6, v8);
  }

  outlined destroy of CAUVehicleLayoutKey?(v6);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  OUTLINED_FUNCTION_0_22();
  v20 = v11;
  v21 = v10;
  v12 = [v2 vehicleLayoutKey];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  MEMORY[0x245D0A530](v13, v15);

  result = OUTLINED_FUNCTION_1_52("Fatal error", v16, v17, v20, v21, "CAFCombine/CAFPositioned+CarAssetUtils.swift", v18, v19, 30, 0);
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t key path getter for CAFCarManagerObservable.currentCar : CAFCarManagerObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFCarManagerObservable.currentCar.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for CAFCarManagerObservable.currentCar : CAFCarManagerObservable(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CAFCarManagerObservable.currentCar.setter(v1);
}

uint64_t CAFCarManagerObservable.currentCar.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CAFCarManagerObservable.currentCar.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*CAFCarManagerObservable.currentCar.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = static Published.subscript.modify();
  return CARSessionStatusObservable.session.modify;
}

uint64_t key path setter for CAFCarManagerObservable.$currentCar : CAFCarManagerObservable(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return CAFCarManagerObservable.$currentCar.setter(v4);
}

uint64_t CAFCarManagerObservable.$currentCar.getter()
{
  OUTLINED_FUNCTION_5_4(v0 + OBJC_IVAR____TtC10CAFCombine23CAFCarManagerObservable__currentCar, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CAFCarCSgGMd, &_s7Combine9PublishedVySo6CAFCarCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CAFCarManagerObservable.$currentCar.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v10[-v7 - 8], a1, v3);
  OUTLINED_FUNCTION_5_4(v1 + OBJC_IVAR____TtC10CAFCombine23CAFCarManagerObservable__currentCar, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CAFCarCSgGMd, &_s7Combine9PublishedVySo6CAFCarCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*CAFCarManagerObservable.$currentCar.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMR);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_5_4(v1 + OBJC_IVAR____TtC10CAFCombine23CAFCarManagerObservable__currentCar, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CAFCarCSgGMd, &_s7Combine9PublishedVySo6CAFCarCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CAFCarManagerObservable.$currentCar.modify;
}

void CAFCarManagerObservable.$currentCar.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    CAFCarManagerObservable.$currentCar.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CAFCarManagerObservable.$currentCar.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

id CAFCarManagerObservable.init(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CAFCarCSgGMd, &_s7Combine9PublishedVySo6CAFCarCSgGMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC10CAFCombine23CAFCarManagerObservable__currentCar;
  v17[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CAFCarCSgMd, _sSo6CAFCarCSgMR);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v1[v9], v8, v3);
  *&v1[OBJC_IVAR____TtC10CAFCombine23CAFCarManagerObservable_observed] = a1;
  v10 = a1;
  v11 = [v10 currentCar];
  OUTLINED_FUNCTION_5_4(&v1[v9], v17);
  (*(v5 + 8))(&v1[v9], v3);
  v16 = v11;
  Published.init(initialValue:)();
  swift_endAccess();
  v12 = type metadata accessor for CAFCarManagerObservable(0);
  v15.receiver = v1;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v10 registerObserver_];

  return v13;
}

uint64_t type metadata accessor for CAFCarManagerObservable(uint64_t a1)
{
  result = type metadata singleton initialization cache for CAFCarManagerObservable;
  if (!type metadata singleton initialization cache for CAFCarManagerObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CAFCarManagerObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine23CAFCarManagerObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFCarManagerObservable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFCarManagerObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFCarManagerObservable@<X0>(void *a1@<X8>)
{
  result = CAFCarManagerObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFCarManagerObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFCarManagerObservable(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFCarManagerObservable.carManager(_:didUpdateCurrentCar:)(uint64_t a1, void *a2)
{
  v3 = a2;

  return CAFCarManagerObservable.currentCar.setter(a2);
}

unint64_t type metadata accessor for CAFCarManager()
{
  result = lazy cache variable for type metadata for CAFCarManager;
  if (!lazy cache variable for type metadata for CAFCarManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFCarManager);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFCarManagerObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFCarManagerObservable and conformance CAFCarManagerObservable(&lazy protocol witness table cache variable for type CAFCarManagerObservable and conformance CAFCarManagerObservable, type metadata accessor for CAFCarManagerObservable, &protocol conformance descriptor for CAFCarManagerObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCarManagerObservable and conformance CAFCarManagerObservable(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for CAFCarManagerObservable(uint64_t a1)
{
  type metadata accessor for Published<CAFCar?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CAFCar?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<CAFCar?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6CAFCarCSgMd, _sSo6CAFCarCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<CAFCar?>);
    }
  }
}

void CAFCar.id.getter()
{
  v1 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void CAFService.id.getter()
{
  v1 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

BOOL CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (a1)
  {
    v7 = [v3 frequency];
    if (v7 >= [a2 frequency])
    {
      v8 = [v4 frequency];
      if ([a2 frequency] < v8)
      {
        return 0;
      }

      v9 = [v4 multicast];
      if (v9 >= [a2 multicast])
      {
        v10 = [v4 multicast];
        if ([a2 multicast] >= v10)
        {
          goto LABEL_6;
        }

        return 0;
      }
    }

    return 1;
  }

LABEL_6:
  CAFMediaItem.primaryDisplayName(in:)(v5);
  v28 = CAFMediaItem.primaryDisplayName(in:)(v5);
  v11 = lazy protocol witness table accessor for type String and conformance String();
  v18 = OUTLINED_FUNCTION_1_53(v11, MEMORY[0x277D837D0], v12, v13, v14, v15, v16, v17, v28);

  if (v18 == -1)
  {
    return 1;
  }

  if (v18 == 1)
  {
    return 0;
  }

  CAFMediaItem.secondaryDisplayName.getter();
  v20 = CAFMediaItem.secondaryDisplayName.getter();
  v27 = OUTLINED_FUNCTION_1_53(v20, MEMORY[0x277D837D0], v21, v22, v23, v24, v25, v26, v20);

  return v27 != 1;
}

uint64_t CAFMediaItem.formattedUserEnteredFrequency(in:)(uint64_t a1)
{
  v2 = a1;
  v3 = [v1 frequency];

  return UInt32.formattedUserEnteredFrequency(mediaSourceType:)(v2, v3);
}

uint64_t UInt32.formattedUserEnteredFrequency(mediaSourceType:)(char a1, unsigned int a2)
{
  if (a1 != 8 && a1 != 2)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2422F24A0;
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = a2 / 1000.0;

  return String.init(format:_:)();
}

Swift::String __swiftcall String.coalesce(_:)(Swift::String_optional a1)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v2;
    v5 = v1;

    countAndFlagsBits = v5;
  }

  else
  {
    object = a1.value._object;
    if (a1.value._object)
    {
      countAndFlagsBits = a1.value._countAndFlagsBits;

      v4 = object;
    }

    else
    {
      countAndFlagsBits = 0;
      v4 = 0xE000000000000000;
    }
  }

  v8 = countAndFlagsBits;
  v9 = v4;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t Optional<A>.coalesce(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    if (a2)
    {

      a3 = a1;
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

void CAFMediaItem.songTitle.getter(SEL *a1)
{
  outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v1, a1);
  if (v2)
  {
    OUTLINED_FUNCTION_0_23();
    if (!v3)
    {
    }
  }
}

uint64_t CAFMediaItem.songTitleArtist.getter()
{
  CAFMediaItem.songTitle.getter();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  CAFMediaItem.songArtist.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    OUTLINED_FUNCTION_0_23();
    if (v9)
    {
      v10 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v10 = v3;
      }

      if (v10)
      {
        MEMORY[0x245D0A530](0x209480E220, 0xA500000000000000);
      }

      MEMORY[0x245D0A530](v7, v8);
    }

    else
    {
    }
  }

  return v2;
}

uint64_t CAFMediaItem.primaryDisplayName(in:)(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 8:
      outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_mediaItemName);
      countAndFlagsBits = 0xE000000000000000;
      v4._countAndFlagsBits = 8013901;
      v4._object = 0xE300000000000000;
      v5 = String.hasSuffix(_:)(v4);

      if (!v5)
      {
        outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_mediaItemName);
        if (v6)
        {
          countAndFlagsBits = v6;
        }

        else
        {
          countAndFlagsBits = 0xE000000000000000;
        }
      }

      v7.value._countAndFlagsBits = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_mediaItemShortName);
      String.coalesce(_:)(v7);

      v8 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_userVisibleDescription);
      goto LABEL_10;
    case 3:
      CAFMediaItem.songTitleArtist.getter();
      OUTLINED_FUNCTION_2_37();
      v14.value._countAndFlagsBits = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_mediaItemName);
      countAndFlagsBits = String.coalesce(_:)(v14)._countAndFlagsBits;

      v8 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_userVisibleDescription);
LABEL_10:
      String.coalesce(_:)(*&v8);
      OUTLINED_FUNCTION_2_37();
      goto LABEL_11;
    case 6:
      outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_mediaItemName);
      OUTLINED_FUNCTION_2_37();
      v16 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_userVisibleDescription);
      if (v3)
      {
        goto LABEL_12;
      }

      if (v17)
      {
        countAndFlagsBits = v16;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      break;
    default:
      countAndFlagsBits = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_mediaItemName);
      v11 = v10;
      v12 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_mediaItemShortName);
      if (v11)
      {
      }

      else if (v13)
      {
        countAndFlagsBits = v12;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      v18.value._countAndFlagsBits = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v2, &selRef_userVisibleDescription);
      String.coalesce(_:)(v18);
      OUTLINED_FUNCTION_2_37();
LABEL_11:

LABEL_12:

      break;
  }

  return countAndFlagsBits;
}

uint64_t CAFMediaItem.secondaryDisplayName.getter()
{
  result = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v0, &selRef_userVisibleDescription);
  if (!v2)
  {
    return 0;
  }

  return result;
}

BOOL CAFMediaItem.isEquivalent(to:)(void *a1)
{
  v3 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v1);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_0_23();
  if (!v7 || (outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(a1), !v8))
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = v8;
  OUTLINED_FUNCTION_0_23();
  if (!v11)
  {

    goto LABEL_12;
  }

  if (v5 == v10 && v6 == v9)
  {
LABEL_32:

    return 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return 1;
  }

LABEL_13:
  if ([v1 frequency])
  {
    if ([a1 frequency])
    {
      v14 = [v1 frequency];
      if (v14 == [a1 frequency])
      {
        v15 = [v1 multicast];
        return v15 == [a1 multicast];
      }
    }
  }

  outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v1, &selRef_mediaItemName);
  if (!v17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_26();
  if (!v18)
  {
    return 0;
  }

  outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(a1, &selRef_mediaItemName);
  if (!v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_26();
  if (!v20)
  {
    return 0;
  }

  v21 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(v1, &selRef_mediaItemName);
  v23 = v22;
  v24 = outlined bridged method (pb) of @objc CAFMediaItem.identifier.getter(a1, &selRef_mediaItemName);
  if (v23)
  {
    if (v25)
    {
      if (v21 != v24 || v23 != v25)
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v27 & 1;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (v25)
  {
LABEL_30:

    return 0;
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28211F350](&a9, a2, a2, v9, v9);
}

uint64_t one-time initialization function for default()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.default = result;
  return result;
}

uint64_t static CAFCombineLogger.debug(_:function:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 (*a8)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v13 = a8(a1, a2, a3, a4, a5, a6);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.default;
  result = os_log_type_enabled(static OS_os_log.default, v13);
  if (result)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v18);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a7;
    *(v16 + 22) = 2080;
    *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    _os_log_impl(&dword_2421B0000, v14, v13, "%s: %ld  %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D0B280](v17, -1, -1);
    return MEMORY[0x245D0B280](v16, -1, -1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAFCombineLogger(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CAFCombineLogger(_BYTE *result, int a2, int a3)
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

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t CAFEnum.id.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v9[0] = String.init<A>(describing:)();
  v9[1] = v6;
  MEMORY[0x245D0A530](46, 0xE100000000000000);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245D0A530](v7);

  return v9[0];
}

id CAFCar.dimesionObservable.getter()
{
  v1 = [v0 dimensionManager];
  v2 = objc_allocWithZone(type metadata accessor for CAFDimensionObservable(0));
  return CAFDimensionObservable.init(_:)(v1);
}

uint64_t type metadata accessor for CAFDimensionObservable(uint64_t a1)
{
  result = type metadata singleton initialization cache for CAFDimensionObservable;
  if (!type metadata singleton initialization cache for CAFDimensionObservable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for CAFDimensionObservable.measurementSystem : CAFDimensionObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFDimensionObservable.measurementSystem.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDimensionObservable.measurementSystem.getter()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3_27(KeyPath, v1);

  return v3;
}

uint64_t CAFDimensionObservable.measurementSystem.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_8_5(v1, v2);
}

uint64_t (*CAFDimensionObservable.measurementSystem.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_13_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_25(KeyPath);
  return CAFDimensionObservable.measurementSystem.modify;
}

uint64_t CAFDimensionObservable.$measurementSystem.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo20CAFMeasurementSystemV_GMd, &_s7Combine9PublishedV9PublisherVySo20CAFMeasurementSystemV_GMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_0_0(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_5_4(v1 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable__measurementSystem, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo20CAFMeasurementSystemVGMd, &_s7Combine9PublishedVySo20CAFMeasurementSystemVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*CAFDimensionObservable.$measurementSystem.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_13_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo20CAFMeasurementSystemV_GMd, &_s7Combine9PublishedV9PublisherVySo20CAFMeasurementSystemV_GMR);
  OUTLINED_FUNCTION_7_11(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_5_4(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable__measurementSystem, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo20CAFMeasurementSystemVGMd, &_s7Combine9PublishedVySo20CAFMeasurementSystemVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CAFDimensionObservable.$measurementSystem.modify;
}

uint64_t key path getter for CAFDimensionObservable.temperatureUnit : CAFDimensionObservable@<X0>(uint64_t *a1@<X8>)
{
  result = CAFDimensionObservable.temperatureUnit.getter();
  *a1 = result;
  return result;
}

uint64_t CAFDimensionObservable.temperatureUnit.getter()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3_27(KeyPath, v1);

  return v3;
}

uint64_t CAFDimensionObservable.temperatureUnit.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_8_5(v1, v2);
}

uint64_t (*CAFDimensionObservable.temperatureUnit.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_13_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_25(KeyPath);
  return CAFDimensionObservable.temperatureUnit.modify;
}

uint64_t key path setter for CAFDimensionObservable.$measurementSystem : CAFDimensionObservable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_30();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t CAFDimensionObservable.$measurementSystem.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_5_4(v3 + *a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CAFDimensionObservable.$temperatureUnit.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17NSUnitTemperatureC_GMd, _s7Combine9PublishedV9PublisherVySo17NSUnitTemperatureC_GMR);
  OUTLINED_FUNCTION_30();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_0_0(v7, v11);
  v9(v8);
  OUTLINED_FUNCTION_5_4(v1 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable__temperatureUnit, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17NSUnitTemperatureCGMd, &_s7Combine9PublishedVySo17NSUnitTemperatureCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*CAFDimensionObservable.$temperatureUnit.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_13_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17NSUnitTemperatureC_GMd, _s7Combine9PublishedV9PublisherVySo17NSUnitTemperatureC_GMR);
  OUTLINED_FUNCTION_7_11(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_5_4(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable__temperatureUnit, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17NSUnitTemperatureCGMd, &_s7Combine9PublishedVySo17NSUnitTemperatureCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CAFDimensionObservable.$temperatureUnit.modify;
}

void CAFDimensionObservable.$measurementSystem.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

void CAFDimensionObservable.currentLocale.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed) locale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
}

id CAFDimensionObservable.tirePressureUnit.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed) tirePressureUnit];

  return v1;
}

id CAFDimensionObservable.vehicleSpeedUnit.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed) vehicleSpeedUnit];

  return v1;
}

id CAFDimensionObservable.vehicleRangeUnit.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed) vehicleRangeUnit];

  return v1;
}

id CAFDimensionObservable.vehicleFuelEfficiencyUnit.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed) vehicleFuelEfficiencyUnit];

  return v1;
}

id CAFDimensionObservable.vehicleChargePowerUnit.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed) vehicleChargePowerUnit];

  return v1;
}

id CAFDimensionObservable.init(_:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed] = a1;
  v2 = a1;
  v3 = [v2 unitTemperature];
  OUTLINED_FUNCTION_5_4(&v1[OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable__temperatureUnit], v9);
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  Published.init(initialValue:)();
  swift_endAccess();
  v4 = [v2 measurementSystem];
  OUTLINED_FUNCTION_5_4(&v1[OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable__measurementSystem], v9);
  v8 = v4;
  type metadata accessor for CAFMeasurementSystem(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CAFDimensionObservable(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v2 registerObserver_];

  return v5;
}

id CAFDimensionObservable.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDimensionObservable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CAFDimensionObservable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for CAFObservable.observed.getter in conformance CAFDimensionObservable@<X0>(void *a1@<X8>)
{
  result = CAFDimensionObservable.observed.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CAFDimensionObservable@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CAFDimensionObservable(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CAFDimensionObservable.dimensionManager(_:didUpdateTemperatureUnit:)(uint64_t a1, void *a2)
{
  v2 = a2;

  return CAFDimensionObservable.temperatureUnit.setter();
}

void Measurement<>.toTemperatureUnit(using:)(uint64_t a1, SEL *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = [*(a1 + OBJC_IVAR____TtC10CAFCombine22CAFDimensionObservable_observed) *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  Measurement<>.converted(to:)();
}

void Measurement<>.toTemperatureUnit(using:)(void *a1, SEL *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  Measurement<>.converted(to:)();
}

id Measurement<>.formattedString(maximumFractionDigits:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v3 setUnitOptions_];
  if (a1 < 0)
  {
    goto LABEL_4;
  }

  result = [v3 numberFormatter];
  if (result)
  {
    v5 = result;
    [result setMaximumFractionDigits_];

LABEL_4:
    v6 = NSMeasurementFormatter.string<A>(from:)();

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type CAFDimensionManager and conformance CAFDimensionManager()
{
  result = lazy protocol witness table cache variable for type CAFDimensionManager and conformance CAFDimensionManager;
  if (!lazy protocol witness table cache variable for type CAFDimensionManager and conformance CAFDimensionManager)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for CAFDimensionManager, 0x277CF8418);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDimensionManager and conformance CAFDimensionManager);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CAFDimensionObservable(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CAFDimensionObservable and conformance CAFDimensionObservable(&lazy protocol witness table cache variable for type CAFDimensionObservable and conformance CAFDimensionObservable, &protocol conformance descriptor for CAFDimensionObservable);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CAFDimensionObservable and conformance CAFDimensionObservable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAFDimensionObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for CAFDimensionObservable(uint64_t a1)
{
  type metadata accessor for Published<CAFMeasurementSystem>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<NSUnitTemperature>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<CAFMeasurementSystem>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<CAFMeasurementSystem>)
  {
    type metadata accessor for CAFMeasurementSystem(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<CAFMeasurementSystem>);
    }
  }
}

void type metadata accessor for Published<NSUnitTemperature>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<NSUnitTemperature>)
  {
    type metadata accessor for CAFVehicleUnits(255, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<NSUnitTemperature>);
    }
  }
}

void *OUTLINED_FUNCTION_3_27(uint64_t a1, uint64_t a2, ...)
{

  return static Published.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1)
{
  *(v1 + 40) = a1;

  return static Published.subscript.modify();
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, ...)
{

  return static Published.subscript.setter();
}

void static SafeReadOnlyPublished.subscript.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_2();
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  SafePublished.observedValuekeypath.getter();
  (*(v2 + 32))(v3, v2);
  swift_getAtKeyPath();

  (*(v6 + 8))(v1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_32();
}

void static SafePublished.subscript.getter()
{
  OUTLINED_FUNCTION_13_1();
  v1 = v0;
  v3 = v2;
  v15 = v4;
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30();
  v9 = v8;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-1] - v11;
  v16[4] = v3;
  swift_unknownObjectRetain();
  v13 = swift_readAtKeyPath();

  v13(v16, 0);
  swift_unknownObjectRelease();
  SafePublished.observedValuekeypath.getter();
  (*(v5 + 32))(v6, v5);

  v14 = swift_readAtKeyPath();
  (*(*(*(v1 + 88) - 8) + 16))(v15);
  v14(v16, 0);

  (*(v9 + 8))(v12, AssociatedTypeWitness);
  OUTLINED_FUNCTION_32();
}

void static SafePublished.subscript.setter()
{
  OUTLINED_FUNCTION_13_1();
  v33 = v2;
  v34 = v1;
  v4 = v3;
  v35 = v5;
  v6 = v0[11];
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_13_0();
  v8 = MEMORY[0x28223BE20](v7);
  v31 = v27 - v9;
  v28 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[12];
  v13 = v0[10];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30();
  v29 = v15;
  v30 = v14;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v16);
  v18 = v27 - v17;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_2();
  dispatch thunk of ObservableObject.objectWillChange.getter();
  type metadata accessor for ObservableObjectPublisher();
  if (swift_dynamicCast())
  {
    ObservableObjectPublisher.send()();
  }

  v36[4] = v4;
  swift_unknownObjectRetain();

  v20 = swift_readAtKeyPath();

  v20(v36, 0);
  v27[1] = v4;
  swift_unknownObjectRelease();

  v27[2] = SafePublished.observedValuekeypath.getter();
  v21 = v18;
  (*(v12 + 32))(v13, v12);
  v22 = v32;
  v23 = *(v32 + 16);
  v24 = v35;
  v25 = v28;
  v23(v11, v35, v28);
  swift_setAtReferenceWritableKeyPath();
  (*(v29 + 8))(v21, v30);
  v26 = v31;
  v23(v31, v24, v25);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  SafePublished.value.setter(v26);
  swift_unknownObjectRelease();

  (*(v22 + 8))(v24, v25);
  OUTLINED_FUNCTION_32();
}

uint64_t SafePublished.value.getter()
{
  return SafePublished.value.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void key path setter for SafePublished.wrappedValue : <A, B>SafePublished<A, B>(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = (*(v1 + 16))();
  SafePublished.wrappedValue.setter(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t (*SafePublished.objectWillChange.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = SafePublished.objectWillChange.getter();
  return SafePublished.objectWillChange.modify;
}

void key path setter for static SafePublished.subscript(_enclosingInstance:wrapped:storage:) : <A, B>SafePublished<A, B>.TypeAB(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v1 + 16))(&v3 - v2);
  swift_unknownObjectRetain();

  static SafePublished.subscript.setter();
}

void (*static SafePublished.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v10 = *(v4 + 88);
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  static SafePublished.subscript.getter();
  return static SafePublished.subscript.modify;
}

void static SafePublished.subscript.modify()
{
  OUTLINED_FUNCTION_13_1();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 56);
  if (v4)
  {
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    (*(v6 + 16))(*(*v0 + 48), v3, v5);

    swift_unknownObjectRetain();
    static SafePublished.subscript.setter();
    (*(v6 + 8))(v3, v5);
  }

  else
  {

    swift_unknownObjectRetain();
    static SafePublished.subscript.setter();
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_32();

  free(v7);
}

void SafePublished.projectedValue.getter()
{
  SafePublished.projectedValue.getter();
}

{
  OUTLINED_FUNCTION_13_1();
  v21 = v2;
  v19[1] = v3;
  v5 = v4;
  v6 = *v0;
  v7 = *(*v0 + 88);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_6_11();
  v8 = type metadata accessor for Published.Publisher();
  OUTLINED_FUNCTION_30();
  v20 = v9;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  v11 = type metadata accessor for Publishers.CompactMap();
  OUTLINED_FUNCTION_30();
  v13 = v12;
  OUTLINED_FUNCTION_13_0();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v19 - v16;
  v5(v15);
  v18 = swift_allocObject();
  v18[2] = *(v6 + 80);
  v18[3] = v7;
  v18[4] = *(v6 + 96);
  Publisher.compactMap<A>(_:)();

  (*(v20 + 8))(v1, v8);
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();
  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_32();
}

void SafePublished.value.setter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v3 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_30();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_2();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v0, v2, v3);

  static Published.subscript.setter();
  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_32();
}

uint64_t (*protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance SafePublished<A, B>(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SafePublished.objectWillChange.modify(v2);
  return protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance SafePublished<A, B>;
}

uint64_t SafePublished.$value.getter()
{
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_8(v0);
  OUTLINED_FUNCTION_9_5();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_6_11();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SafePublished.objectWillChange.getter()
{
  swift_beginAccess();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_6_11();
  type metadata accessor for Published();
  v0 = Published.objectWillChange.getter();
  swift_endAccess();
  return v0;
}

uint64_t SafePublished.objectWillChange.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_10_8(v1);
  OUTLINED_FUNCTION_9_5();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_6_11();
  type metadata accessor for Published();
  Published.objectWillChange.setter();
  return swift_endAccess();
}

uint64_t (*SafeReadOnlyPublished.objectWillChange.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = SafePublished.objectWillChange.getter();
  return SafeReadOnlyPublished.objectWillChange.modify;
}

uint64_t SafePublished.objectWillChange.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t closure #1 in SafePublished.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_1_29();
  v7 = *(v6 + 16);

  return v7(a3, a1, v5);
}

uint64_t SafePublished.setValue(_:)(uint64_t a1, uint64_t (*a2)(char *))
{
  v5 = *(*v2 + 88);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  (*(*(v5 - 8) + 16))(&v10 - v7, a1, v5);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
  return a2(v8);
}

uint64_t *SafePublished.deinit()
{

  v1 = *(*v0 + 112);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_6_11();
  type metadata accessor for Published();
  OUTLINED_FUNCTION_1_29();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SafePublished.__deallocating_deinit(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t (*protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance SafeReadOnlyPublished<A, B>(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SafeReadOnlyPublished.objectWillChange.modify(v2);
  return protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance SafeReadOnlyPublished<A, B>;
}

void protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance SafePublished<A, B>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t type metadata completion function for SafePublished(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Published();
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

uint64_t key path setter for SafePublished.value : <A, B>SafePublished<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a5(v9);
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211B6B0]();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}