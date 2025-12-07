uint64_t OUTLINED_FUNCTION_11()
{
}

BOOL OUTLINED_FUNCTION_11_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return dispatch thunk of ObservableObject.objectWillChange.getter();
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_11_6(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  a1[1] = a2;

  return outlined init with copy of Transforming(va1, va);
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_11_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a17;

  return __swift_project_boxed_opaque_existential_1(&a14, v18);
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{

  return swift_once();
}

uint64_t specialized == infix<A>(_:_:)()
{
  return 1;
}

{
  v0 = InputOrigin.rawValue.getter();
  v2 = v1;
  v3 = InputOrigin.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_4(v0, v4, v3);
  }

  return v6 & 1;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_27()
{

  JUMPOUT(0x1E12AA0F0);
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_8(unint64_t *a1)
{

  return lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(a1, &protocol conformance descriptor for CurrentDevice);
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t withTimeout<A>(seconds:operation:)()
{
  OUTLINED_FUNCTION_4_3();
  v2 = v1;
  v0[6] = v3;
  v0[7] = v1;
  v0[5] = v4;
  v0[4] = v5;
  v0[3] = v6;
  v0[8] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = type metadata accessor for Result();
  v0[9] = v7;
  v0[10] = *(v7 - 8);
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v10 = type metadata accessor for CooperativeTimeoutResult(0, v2, v8, v9);
  v0[13] = v10;
  v0[14] = *(v10 - 8);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v0[17] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v11);
}

{
  OUTLINED_FUNCTION_13_1();
  v1 = *(v0 + 17);
  v3 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 5);
  type metadata accessor for TaskPriority();
  v5 = OUTLINED_FUNCTION_17_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v4;
  v9[6] = v3;

  v10 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v1, &async function pointer to partial apply for closure #1 in withTimeout<A>(seconds:operation:), v9, v2);
  *(v0 + 18) = v10;
  v11 = swift_allocObject();
  *(v0 + 19) = v11;
  *(v11 + 16) = v2;
  *(v11 + 24) = v10;

  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  *(v0 + 20) = v12;
  *v12 = v13;
  v12[1] = withTimeout<A>(seconds:operation:);
  v14 = *(v0 + 16);
  v15 = *(v0 + 7);
  v16 = v0[4];

  return withCooperativeTimeout<A>(seconds:cancellableOperation:)(v14, &async function pointer to partial apply for closure #2 in withTimeout<A>(seconds:operation:), v11, v15, v16);
}

{
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[11];
    v2 = v0[12];
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[3];
    (*(v4 + 32))(v2, v0[15], v3);
    (*(v4 + 16))(v1, v2, v3);
    _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v3, (v0 + 2), v5);
    v13 = v0[16];
    v14 = v0[14];
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[10];
    v18 = v0[9];

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);

    OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[9];
    v11 = v0[10];
    MEMORY[0x1E12A8F00](v0[18], v0[7], v0[8], MEMORY[0x1E69E7288]);
    lazy protocol witness table accessor for type TimeoutError and conformance TimeoutError();
    swift_allocError();
    swift_willThrow();

    (*(v9 + 8))(v6, v8);
    (*(v11 + 8))(v7, v10);

    OUTLINED_FUNCTION_9();
  }

  return v19();
}

{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DD20108C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, __int128);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return outlined init with take of Transforming(va, va1);
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_18_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x12u);
}

uint64_t OUTLINED_FUNCTION_13(int a1)
{

  return __swift_storeEnumTagSinglePayload(v1, a1 ^ 1u, 1, v2);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_13_2(uint64_t a1@<X8>)
{

  NSBundle.getTransformations(key:)(0xD000000000000021, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  *(v1 - 96) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_3()
{
  *(v1 - 120) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_1_7@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12, __int128 a13, __int128 a14, __int128 a15)
{
  result = a12;
  a1[4] = a14;
  a1[5] = a15;
  a1[2] = a12;
  a1[3] = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_1@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void OUTLINED_FUNCTION_1_15()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1E12AA0F0);
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{

  return MockableEnvironmentProvider.mock<A>(override:run:)(v5, v4, v3, a1, v2, v1);
}

void OUTLINED_FUNCTION_1_20(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_5_5@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  result = a13;
  a1[4] = a15;
  a1[5] = a16;
  a1[2] = a13;
  a1[3] = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void OUTLINED_FUNCTION_5_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void *OUTLINED_FUNCTION_5_13()
{

  return DeadlockDetectingLock.init(name:wrapping:deadlockAction:)(v0, v1, v2 - 128, closure #1 in variable initialization expression of static DeadlockDetectingLock.defaultDeadlockAction, 0);
}

uint64_t OUTLINED_FUNCTION_5_15(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return static _DictionaryStorage.resize(original:capacity:move:)();
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{

  return Dictionary.removeValue(forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, ...)
{

  return String.hash(into:)();
}

void OUTLINED_FUNCTION_15_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

id OUTLINED_FUNCTION_12_9()
{

  return objc_allocWithZone(v0);
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t a2, ...)
{

  return outlined init with take of Transforming(&v4, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 1024;
  *(v2 + 14) = *(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1, uint64_t a2)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_2_0()
{
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_2_10(void *result)
{
  *(v5 + 32) = result;
  result[2] = v4;
  result[3] = v2;
  result[4] = v3;
  result[5] = v1;
  return result;
}

void OUTLINED_FUNCTION_2_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void OUTLINED_FUNCTION_2_13()
{

  JUMPOUT(0x1E12AA0F0);
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_2_20(uint64_t a2, ...)
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_8_5()
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

id OUTLINED_FUNCTION_8_6()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  *(v3 - 88) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1)
{

  return swift_once();
}

uint64_t outlined destroy of CheckedContinuation<(), Error>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_17_1@<X0>(uint64_t a1@<X8>)
{
  specialized Collection.first.getter(v1, a1);
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[11];

  return $defer #1 <A><A1>() in MockableEnvironmentProvider.mock<A>(override:run:)(v2, v6, v4, v5, v3);
}

uint64_t OUTLINED_FUNCTION_14_8@<X0>(uint64_t a1@<X8>)
{

  return specialized UnsafeMutablePointer.assign(repeating:count:)(0, (a1 + 63) >> 6, v1);
}

uint64_t closure #1 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = closure #1 in withTimeout<A>(seconds:operation:);

  return v8(a1);
}

uint64_t withCooperativeTimeout<A>(seconds:cancellableOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_10_3();
}

uint64_t withCooperativeTimeout<A>(seconds:cancellableOperation:)()
{
  OUTLINED_FUNCTION_8_4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  type metadata accessor for CooperativeTimeoutResult(0, v1, v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  *(v0 + 64) = v7;
  *v7 = v8;
  v7[1] = withCooperativeTimeout<A>(seconds:cancellableOperation:);
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v9);
}

uint64_t partial apply for closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  v8 = v2[5];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_6(v9);
  *v10 = v11;
  v10[1] = closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);

  return closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)(a1, a2, v6, v7, v5, v8);
}

uint64_t closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 64) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 72) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v7 = type metadata accessor for Result();
  *(v6 + 80) = v7;
  type metadata accessor for Optional();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:));
}

uint64_t closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v6 = type metadata accessor for TaskPriority();
  v7 = OUTLINED_FUNCTION_17_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v5;
  v10[6] = v4;
  v11 = type metadata accessor for ThrowingTaskGroup();
  v0[18] = v11;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v1, &async function pointer to partial apply for closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:), v10, v11);
  outlined destroy of CheckedContinuation<(), Error>?(v1, &_sScPSgMd, &_sScPSgMR);
  v12 = OUTLINED_FUNCTION_17_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  v15[5] = v3;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(v1, &async function pointer to partial apply for closure #2 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:), v15, v11);
  outlined destroy of CheckedContinuation<(), Error>?(v1, &_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_5_4();
  v0[19] = v16;
  *v16 = v17;
  v16[1] = closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);
  OUTLINED_FUNCTION_14_3();

  return v19();
}

{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

{
  v1 = v0[12];
  v2 = v0[10];
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[4];
  v10 = *(v6 + 32);
  v0[20] = v10;
  v0[21] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v4, v1, v2);
  MEMORY[0x1E12A8F50](*v9, v8, v7, MEMORY[0x1E69E7288]);
  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v12(v5, v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = *v14;
    v0[22] = *v14;
    v0[2] = v15;
    v16 = v15;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_15_2();
      OUTLINED_FUNCTION_5_4();
      v0[23] = v17;
      *v17 = v18;
      v17[1] = closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);
      OUTLINED_FUNCTION_14_3();

      return v25();
    }
  }

  else
  {
    (*(v0[13] + 8))(v14, v0[10]);
  }

  v19 = v0[16];
  v20 = OUTLINED_FUNCTION_19_0();
  v21(v20, v19);
  type metadata accessor for CooperativeTimeoutResult(0, v11, v22, v23);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_7_3();

  return v24();
}

{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

{
  v2 = v0[10];
  v3 = v0[11];
  result = __swift_getEnumTagSinglePayload(v3, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[22];
    v6 = v0[20];
    v7 = v0[14];
    (*(v0[13] + 8))(v0[16], v2);

    v6(v7, v3, v2);
    v8 = v0[14];
    v9 = OUTLINED_FUNCTION_19_0();
    v10(v9, v8);
    type metadata accessor for CooperativeTimeoutResult(0, v1, v11, v12);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_7_3();

    return v13();
  }

  return result;
}

uint64_t sub_1DD20260C()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  outlined init with copy of TaskPriority?(a1, v18 - v9);
  v11 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ThrowingTaskGroup.nextResult(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = ThrowingTaskGroup.nextResult(isolation:);

  return MEMORY[0x1EEE6DAB8](a1, a4);
}

uint64_t partial apply for closure #1 in withTimeout<A>(seconds:operation:)()
{
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_5(v3);

  return closure #1 in withTimeout<A>(seconds:operation:)(v5, v6, v7, v1);
}

uint64_t specialized ManagedContinuation.updateState(continuation:result:)(uint64_t a1, void (*a2)(char *, char *, uint64_t), char a3)
{
  v53 = a2;
  v6 = ~a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  OUTLINED_FUNCTION_5_0();
  v56 = v17;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v54 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v55 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - v24;
  OUTLINED_FUNCTION_7();
  v57 = *(v26 + 104);
  [*(v3 + v57) lock];
  if (v6)
  {
    OUTLINED_FUNCTION_7();
    v28 = v3 + *(v27 + 96);
    swift_beginAccess();
    if (*(v28 + 8) == 255)
    {
      v29 = v53;
      *v28 = v53;
      *(v28 + 8) = a3;
      outlined copy of Result<(), Error>(v29, a3 & 1);
    }
  }

  outlined init with copy of CheckedContinuation<(), Error>?(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v15);
  }

  else
  {
    v30 = *(v56 + 32);
    v30(v25, v15, v16);
    v30(v13, v25, v16);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
    OUTLINED_FUNCTION_7();
    v32 = *(v31 + 88);
    swift_beginAccess();
    outlined assign with take of CheckedContinuation<(), Error>?(v13, v3 + v32);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_7();
  v34 = *(v33 + 88);
  swift_beginAccess();
  outlined init with copy of CheckedContinuation<(), Error>?(v3 + v34, v10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v16);
  v36 = v55;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v10);
LABEL_12:
    v50 = destructiveProjectEnumData for InputOrigin;
    goto LABEL_13;
  }

  v37 = v56;
  v53 = *(v56 + 32);
  v53(v55, v10, v16);
  OUTLINED_FUNCTION_7();
  v39 = v36;
  v40 = v3 + *(v38 + 96);
  swift_beginAccess();
  v41 = *(v40 + 8);
  if (v41 == 255)
  {
    (*(v37 + 8))(v39, v16);
    goto LABEL_12;
  }

  v42 = *v40;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
  swift_beginAccess();
  v43 = v41 & 1;
  outlined copy of Result<(), Error>(v42, v43);
  outlined assign with take of CheckedContinuation<(), Error>?(v13, v3 + v34);
  swift_endAccess();
  v44 = v39;
  v46 = v53;
  v45 = v54;
  v53(v54, v44, v16);
  v58 = v43;
  v47 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v48 = swift_allocObject();
  v46((v48 + v47), v45, v16);
  v49 = v48 + ((v19 + v47 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v49 = v42;
  *(v49 + 8) = v58;
  v50 = partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:);
LABEL_13:
  v50([*(v3 + v57) unlock]);
}

uint64_t sub_1DD202E80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  OUTLINED_FUNCTION_0_15();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  outlined consume of Result<(), Error>(*(v0 + v4), *(v0 + v4 + 8));

  return MEMORY[0x1EEE6BDD0](v0, v4 + 9, v2 | 7);
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x1E12A8B50);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

BOOL OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return specialized Set._Variant.insert(_:)();
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_0_17(unint64_t *a1)
{

  return lazy protocol witness table accessor for type CurrentProcess and conformance CurrentProcess(a1, &protocol conformance descriptor for CurrentProcess);
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_14@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = (*(v2 + 48) + 16 * v5);
  v7 = v6[1];
  v8 = (*(v1 + 48) + 16 * v5);
  *v8 = *v6;
  v8[1] = v7;
}

uint64_t closure #1 in withTimeout<A>(seconds:operation:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t initializeBufferWithCopyOfBuffer for TypeInformation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return type metadata accessor for Dictionary();
}

unint64_t OUTLINED_FUNCTION_16_3(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v5 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, va);
}

uint64_t OUTLINED_FUNCTION_16_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return outlined init with copy of Transforming(v6 + a1, va);
}

uint64_t outlined init with copy of CheckedContinuation<(), Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

{
  OUTLINED_FUNCTION_4_3();
  ManagedContinuation<A>.resume()();
  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t ManagedContinuation<A>.resume()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  specialized ManagedContinuation.updateState(continuation:result:)(v2, 0, 0);
  return outlined destroy of CheckedContinuation<(), Error>?(v2);
}

uint64_t ManagedContinuation.deinit()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_1_16();
  type metadata accessor for CheckedContinuation();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_15();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_1_16();
  type metadata accessor for Result();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_15();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_7();

  return v0;
}

uint64_t outlined destroy of CheckedContinuation<(), Error>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ManagedContinuation.__deallocating_deinit()
{
  ManagedContinuation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_7_3();

  return v3();
}

uint64_t destroy for Transformer(uint64_t a1)
{
}

uint64_t static Buildable.withBuilder(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Builder(0, a3, a4, a4);
  v7 = Builder.__allocating_init()();
  a1(&v7);
  if (!v4)
  {
    Builder.build()();
  }
}

uint64_t Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  Builder.init()();
  return v0;
}

void *Builder.init()()
{
  type metadata accessor for PartialKeyPath();
  swift_getTupleTypeMetadata2();
  static Array._allocateUninitialized(_:)();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t Builder.subscript.setter()
{
  OUTLINED_FUNCTION_8_3();
  v2 = *(*v1 + *MEMORY[0x1E69E77B0] + 8);
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-v6];
  v8 = *(v2 + 16);
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_2_4();
  v13(v12);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v14 = *(v4 + 8);
    (v14)(v7, v2);
    OUTLINED_FUNCTION_1_3();
    type metadata accessor for PartialKeyPath();
    v15 = OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_15_0(v15);
    swift_endAccess();
    v16 = OUTLINED_FUNCTION_3_2();
    v14(v16);
    outlined destroy of Any?(v24);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_11_1();
    v19(v18);
    v24[3] = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(v10 + 16))(boxed_opaque_existential_0, v0, v8);
    OUTLINED_FUNCTION_1_3();
    type metadata accessor for PartialKeyPath();
    OUTLINED_FUNCTION_16_1();

    Dictionary.subscript.setter();
    swift_endAccess();

    v21 = OUTLINED_FUNCTION_3_2();
    v22(v21);
    return (*(v10 + 8))(v0, v8);
  }
}

{
  OUTLINED_FUNCTION_8_3();
  v2 = *(*v1 + *MEMORY[0x1E69E77B0] + 8);
  v3 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7];
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_2_4();
  v13(v12);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    v14 = *(v5 + 8);
    (v14)(v8, v3);
    OUTLINED_FUNCTION_1_3();
    type metadata accessor for PartialKeyPath();
    v15 = OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_15_0(v15);
    swift_endAccess();
    v16 = OUTLINED_FUNCTION_3_2();
    v14(v16);
    outlined destroy of Any?(v24);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_11_1();
    v19(v18);
    v24[3] = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(v10 + 16))(boxed_opaque_existential_0, v0, v2);
    OUTLINED_FUNCTION_1_3();
    type metadata accessor for PartialKeyPath();
    OUTLINED_FUNCTION_16_1();

    Dictionary.subscript.setter();
    swift_endAccess();

    v21 = OUTLINED_FUNCTION_3_2();
    v22(v21);
    return (*(v10 + 8))(v0, v2);
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:)(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA70](a1);
  }

  OUTLINED_FUNCTION_4_3();
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:);
  a1 = v5;

  return MEMORY[0x1EEE6DA70](a1);
}

uint64_t closure #2 in withCancellableContinuation<A>(body:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in withCancellableContinuation<A>(body:));
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v6();
  }
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = closure #2 in withCancellableContinuation<A>(body:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x80000001DD26A5F0, partial apply for closure #1 in closure #2 in withCancellableContinuation<A>(body:), v3, v5);
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t withCancellableContinuation<A>(body:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {
    v6 = withCancellableContinuation<A>(body:);
  }

  else
  {

    v6 = withCancellableContinuation<A>(body:);
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t closure #2 in withTimeout<A>(seconds:operation:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_14_3();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_7_3();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_4_3();

  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  v0[9] = v1;
  *v1 = v2;
  v1[1] = closure #2 in withTimeout<A>(seconds:operation:);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return withCancellableContinuation<A>(body:)(v5, partial apply for closure #1 in closure #2 in withTimeout<A>(seconds:operation:), v3, v4);
}

{
  OUTLINED_FUNCTION_13_1();
  v1 = v0[10];

  v0[2] = v1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = v0[5];
    v5 = v0[4];
    (*(v0[7] + 8))(v0[8], v0[6]);
    MEMORY[0x1E12A8F00](v5, v4, v3, MEMORY[0x1E69E7288]);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_9();

  return v6();
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZAA11IdleTrackerCSg_AA14CurrentProcessCTt3g5(v21, a1, v22, v20, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{

  return Hasher.init(_seed:)();
}

uint64_t partial apply for specialized closure #2 in withCancellableContinuation<A>(body:)()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_5(v3);

  return specialized closure #2 in withCancellableContinuation<A>(body:)(v5, v6, v7, v1);
}

uint64_t partial apply for closure #2 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)()
{
  OUTLINED_FUNCTION_13_1();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_6(v2);
  *v3 = v4;
  v3[1] = closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);
  OUTLINED_FUNCTION_12_2();

  return closure #2 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)(v1);
}

uint64_t closure #2 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)(double a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = closure #2 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);

  return static Task<>.sleepCooperatively(seconds:)(a1);
}

uint64_t static Task<>.sleepCooperatively(seconds:)()
{
  OUTLINED_FUNCTION_8_4();
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_15_2();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = static Task<>.sleepCooperatively(seconds:);

  return v5();
}

{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x1EEE6DFA0](v7);
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

{
  OUTLINED_FUNCTION_7_3();
  return v0();
}

uint64_t specialized withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](specialized withCancellableContinuation<A>(body:));
}

uint64_t specialized withCancellableContinuation<A>(body:)()
{
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities19ManagedContinuationCyytGMd, &_s13SiriUtilities19ManagedContinuationCyytGMR);
  swift_allocObject();
  v8 = *(v0 + 24);
  v1 = specialized ManagedContinuation.().init()();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  *(v0 + 56) = v3;
  *v3 = v4;
  v3[1] = specialized withCancellableContinuation<A>(body:);
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &async function pointer to partial apply for specialized closure #2 in withCancellableContinuation<A>(body:), v2, partial apply for specialized closure #1 in withCancellableContinuation<A>(body:), v1, 0, 0, v6);
}

{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x1EEE6DFA0](v7);
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_7_3();

  return v0();
}

uint64_t specialized ManagedContinuation.().init()()
{
  v1 = *(*v0 + 88);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + *(*v0 + 96);
  *v3 = 0;
  *(v3 + 8) = -1;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + *(*v0 + 104)) = v4;
  v5 = v4;
  v6 = MEMORY[0x1E12A8BC0](0xD000000000000027, 0x80000001DD26A620);
  [v5 setName_];

  return v0;
}

uint64_t partial apply for closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)()
{
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_5(v3);

  return closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)(v5, v6, v7, v1);
}

uint64_t closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);

  return v8(a1);
}

uint64_t partial apply for closure #2 in withTimeout<A>(seconds:operation:)()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_6(v3);
  *v4 = v5;
  v4[1] = closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);
  v6 = OUTLINED_FUNCTION_12_2();

  return closure #2 in withTimeout<A>(seconds:operation:)(v6, v1, v2);
}

uint64_t closure #2 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for CancellationError();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in withTimeout<A>(seconds:operation:));
}

uint64_t withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](withCancellableContinuation<A>(body:));
}

{
  type metadata accessor for ManagedContinuation(0, *(v4 + 40), a3, a4);
  v11 = *(v4 + 24);
  v5 = ManagedContinuation.__allocating_init()();
  *(v4 + 48) = v5;
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v11;
  v7 = swift_task_alloc();
  *(v4 + 64) = v7;
  *v7 = v4;
  v7[1] = withCancellableContinuation<A>(body:);
  v8 = *(v4 + 40);
  v9 = *(v4 + 16);

  return withTaskCancellationHandler<A>(handler:operation:)(v9, partial apply for closure #1 in withCancellableContinuation<A>(body:), v5, &async function pointer to partial apply for closure #2 in withCancellableContinuation<A>(body:), v6, v8);
}

uint64_t ManagedContinuation.().init()()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for Result();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + *(*v0 + 104)) = v5;
  v6 = v5;
  v7 = MEMORY[0x1E12A8BC0](0xD000000000000027, 0x80000001DD26A620);
  [v6 setName_];

  return v0;
}

uint64_t ManagedContinuation.updateState(continuation:result:)(uint64_t *a1, uint64_t a2)
{
  v107 = a2;
  v102 = a1;
  v3 = *v2;
  v4 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = type metadata accessor for CheckedContinuation();
  v105 = type metadata accessor for Optional();
  v6 = *(v105 - 8);
  v7 = MEMORY[0x1EEE9AC00](v105);
  v103 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v99 = &v85 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v101 = &v85 - v12;
  v109 = v5;
  v106 = *(v5 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v90 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v85 - v16;
  v89 = v17;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v85 - v18;
  v91 = v4;
  v19 = type metadata accessor for Result();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v86 = &v85 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v85 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v85 - v30;
  v32 = *(v19 - 8);
  v33 = MEMORY[0x1EEE9AC00](v29);
  v88 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v94 = &v85 - v36;
  v87 = v37;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v85 - v38;
  [*(v2 + *(v3 + 104)) lock];
  v108 = v21;
  v40 = v21 + 16;
  v41 = *(v21 + 16);
  v41(v31, v107, v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v19);
  v107 = v6;
  v98 = v19;
  v97 = v32;
  v96 = v20;
  v100 = v41;
  v92 = v40;
  if (EnumTagSinglePayload == 1)
  {
    v43 = *(v108 + 8);
    v43(v31, v20);
  }

  else
  {
    v85 = *(v32 + 32);
    v85(v39, v31, v19);
    v44 = *(*v2 + 96);
    swift_beginAccess();
    v41(v28, v2 + v44, v20);
    v45 = __swift_getEnumTagSinglePayload(v28, 1, v19);
    v43 = *(v108 + 8);
    v43(v28, v20);
    if (v45 == 1)
    {
      v46 = v86;
      v85(v86, v39, v19);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v19);
      swift_beginAccess();
      (*(v108 + 40))(v2 + v44, v46, v20);
      swift_endAccess();
    }

    else
    {
      (*(v97 + 8))(v39, v19);
    }

    v6 = v107;
  }

  v47 = *(v6 + 16);
  v48 = v101;
  v49 = v105;
  v47(v101, v102, v105);
  if (__swift_getEnumTagSinglePayload(v48, 1, v109) == 1)
  {
    (*(v6 + 8))(v48, v49);
  }

  else
  {
    v50 = *(v106 + 32);
    v102 = v2;
    v51 = v43;
    v52 = v93;
    v53 = v48;
    v54 = v109;
    v50(v93, v53, v109);
    v55 = v99;
    v56 = v52;
    v43 = v51;
    v2 = v102;
    v50(v99, v56, v54);
    v6 = v107;
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
    v57 = *(*v2 + 88);
    swift_beginAccess();
    (*(v6 + 40))(v2 + v57, v55, v49);
    swift_endAccess();
  }

  v58 = *(*v2 + 88);
  swift_beginAccess();
  v59 = v103;
  v47(v103, (v2 + v58), v49);
  v60 = __swift_getEnumTagSinglePayload(v59, 1, v109);
  v61 = v100;
  if (v60 == 1)
  {
    (*(v6 + 8))(v59, v49);
  }

  else
  {
    v62 = v59;
    v63 = v106;
    v64 = *(v106 + 32);
    v64(v104, v62, v109);
    v65 = *(*v2 + 96);
    swift_beginAccess();
    v66 = v2 + v65;
    v67 = v95;
    v68 = v96;
    v61(v95, v66, v96);
    v69 = v98;
    if (__swift_getEnumTagSinglePayload(v67, 1, v98) != 1)
    {
      v71 = v109;
      v72 = v64;
      v73 = v97 + 32;
      v108 = *(v97 + 32);
      (v108)(v94, v67, v69);
      v74 = v69;
      v75 = v99;
      __swift_storeEnumTagSinglePayload(v99, 1, 1, v71);
      swift_beginAccess();
      (*(v107 + 40))(v2 + v58, v75, v49);
      swift_endAccess();
      v76 = v90;
      v77 = v72;
      v72(v90, v104, v71);
      v78 = v88;
      (v108)(v88, v94, v74);
      v79 = (*(v106 + 80) + 24) & ~*(v106 + 80);
      v80 = (v89 + *(v73 + 48) + v79) & ~*(v73 + 48);
      v81 = swift_allocObject();
      *(v81 + 16) = v91;
      v77(v81 + v79, v76, v109);
      (v108)(v81 + v80, v78, v74);
      v70 = partial apply for closure #2 in ManagedContinuation.updateState(continuation:result:);
      goto LABEL_16;
    }

    (*(v63 + 8))(v104, v109);
    v43(v67, v68);
  }

  v70 = destructiveProjectEnumData for InputOrigin;
LABEL_16:
  v82 = v70;
  v83 = $defer #1 <A>() in ManagedContinuation.updateState(continuation:result:)(v2);
  v82(v83);
}

uint64_t sub_1DD205CD8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_1_16();
  v2 = type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_5_0();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_16();
  v9 = *(type metadata accessor for Result() - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v8 + v10) & ~v10;
  v12 = *(v9 + 64);
  (*(v4 + 8))(v0 + v6, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_5_11();
    (*(v13 + 8))(v0 + v11, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v11 + v12, v5 | v10 | 7);
}

uint64_t closure #1 in closure #2 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in withTimeout<A>(seconds:operation:), v8);
}

uint64_t sub_1DD205F8C()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t withTaskCancellationHandler<A>(handler:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in withTimeout<A>(seconds:operation:);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);

  return MEMORY[0x1EEE6DE18](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t partial apply for closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in withTimeout<A>(seconds:operation:);

  return closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

uint64_t closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in withCancellableContinuation<A>(body:));
}

uint64_t closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v12 - v8);
  ManagedContinuation.setContinuation(_:)(a1);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    return a3(a2);
  }

  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v10 = swift_allocError();
  CancellationError.init()();
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ManagedContinuation.setContinuation(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for Result();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CheckedContinuation();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v13 - v10);
  (*(*(v7 - 8) + 16))(&v13 - v10, a1, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v2);
  ManagedContinuation.updateState(continuation:result:)(v11, v6);
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in withTimeout<A>(seconds:operation:)()
{
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_5(v4);

  return closure #1 in closure #1 in closure #2 in withTimeout<A>(seconds:operation:)(v6, v7, v8, v2, v1);
}

uint64_t closure #1 in closure #1 in closure #2 in withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v7 = *(*a4 + 80);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = MEMORY[0x1E69E7288];
  v10 = type metadata accessor for Result();
  v5[3] = v10;
  v5[4] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = closure #1 in closure #1 in closure #2 in withTimeout<A>(seconds:operation:);

  return MEMORY[0x1EEE6DA20](v11, a5, v7, v8, v9);
}

uint64_t CheckedContinuation.resume(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Result();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t outlined assign with take of CheckedContinuation<(), Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Builder.build()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v1 + 88);
  v4 = *(v3 + 8);

  return v4(v5, v2, v3);
}

uint64_t Builder.subscript.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12_0(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_9_3();
  type metadata accessor for PartialKeyPath();

  OUTLINED_FUNCTION_7_2();

  swift_endAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = OUTLINED_FUNCTION_14_1(v5, v6, v5, v7);
  return OUTLINED_FUNCTION_13(v8);
}

{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12_0(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_9_3();
  type metadata accessor for PartialKeyPath();

  OUTLINED_FUNCTION_7_2();

  swift_endAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = OUTLINED_FUNCTION_14_1(v5, v6, v5, v7);
  return OUTLINED_FUNCTION_13(v8);
}

uint64_t Builder.__deallocating_deinit()
{
  Builder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t specialized closure #2 in withCancellableContinuation<A>(body:)()
{
  OUTLINED_FUNCTION_8_4();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  *(v0 + 56) = v3;
  *v3 = v4;
  v3[1] = specialized closure #2 in withCancellableContinuation<A>(body:);
  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, 0xD000000000000022, v8, v9, v2, v10);
}

{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_14_3();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t specialized closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:));
}

uint64_t specialized ManagedContinuation.setContinuation(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  specialized ManagedContinuation.updateState(continuation:result:)(v4, 0, 255);
  return outlined destroy of CheckedContinuation<(), Error>?(v4, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
}

void specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  specialized ManagedContinuation.setContinuation(_:)(a1);
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
    v5 = swift_allocError();
    CancellationError.init()();
    specialized ManagedContinuation.resume(with:)(v5, 1);
  }

  else
  {
    a3(a2);
  }
}

uint64_t closure #1 in static Task<>.sleepCooperatively(seconds:)(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a2;
  *(v8 + 40) = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:), v8);
}

uint64_t sub_1DD207330()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_6(v3);
  *v4 = v5;
  v4[1] = closure #1 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:);
  v6 = OUTLINED_FUNCTION_12_2();

  return v7(v6, v2, v1);
}

uint64_t partial apply for closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:)()
{
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_5(v4);

  return closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:)(v1, v6, v7, v8, v2);
}

uint64_t closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in static Task<>.sleepCooperatively(seconds:));
}

uint64_t ThrowingTaskGroup.nextResult(isolation:)()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    if (*(v3 + 16))
    {
      swift_getObjectType();
      dispatch thunk of Actor.unownedExecutor.getter();
    }

    return MEMORY[0x1EEE6DFA0](ThrowingTaskGroup.nextResult(isolation:));
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v7();
  }
}

{
  return MEMORY[0x1EEE6C130](*(v0 + 40), "_Concurrency/arm64e-apple-ios.private.swiftinterface", 52, 1, 3126);
}

void specialized closure #1 in withCancellableContinuation<A>(body:)()
{
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
  v0 = swift_allocError();
  CancellationError.init()();
  specialized ManagedContinuation.resume(with:)(v0, 1);
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t specialized ManagedContinuation.resume(with:)(void (*a1)(char *, char *, uint64_t), char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  outlined copy of Result<(), Error>(a1, a2 & 1);
  specialized ManagedContinuation.updateState(continuation:result:)(v6, a1, a2 & 1);
  outlined consume of Result<(), Error>(a1, a2 & 1);
  return outlined destroy of CheckedContinuation<(), Error>?(v6, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
}

id outlined copy of Result<(), Error>(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(int a1, id a2, char a3)
{
  if (a3)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(v0 + v2, v3);
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_getAtKeyPath();
}

unint64_t OUTLINED_FUNCTION_19_3(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &a10);
}

uint64_t closure #1 in closure #1 in closure #2 in withTimeout<A>(seconds:operation:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

{
  OUTLINED_FUNCTION_8_4();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  ManagedContinuation.resume(with:)(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t ManagedContinuation.resume(with:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_10_9();
  v3 = type metadata accessor for Result();
  v4 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_5_0();
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_9();
  v8 = type metadata accessor for CheckedContinuation();
  v9 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_5_0();
  v11 = v10;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v17 - v13);
  __swift_storeEnumTagSinglePayload(&v17 - v13, 1, 1, v8);
  OUTLINED_FUNCTION_5_11();
  (*(v15 + 16))(v1, a1, v3);
  OUTLINED_FUNCTION_12_7();
  ManagedContinuation.updateState(continuation:result:)(v14, v1);
  (*(v6 + 8))(v1, v4);
  return (*(v11 + 8))(v14, v9);
}

uint64_t partial apply for closure #2 in ManagedContinuation.updateState(continuation:result:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_1_16();
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  OUTLINED_FUNCTION_1_16();
  v5 = *(type metadata accessor for Result() - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return closure #2 in ManagedContinuation.updateState(continuation:result:)(v0 + v3, v6, v1);
}

uint64_t closure #2 in ManagedContinuation.updateState(continuation:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(with:)(a2, v4);
}

uint64_t specialized SafeCallback.reify(_:)(void (*a1)(void))
{
  result = (*(*v1 + 96))();
  if (result)
  {
    a1();
  }

  return result;
}

void NetworkAvailability.handlePathUpdate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWPath.Status();
  OUTLINED_FUNCTION_5_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_0();
  v58 = v9 - v8;
  v10 = type metadata accessor for NWPath();
  OUTLINED_FUNCTION_5_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_0();
  v16 = v15 - v14;
  v17 = v1[13];
  OS_dispatch_semaphore.wait()();

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.logger);
  (*(v12 + 16))(v16, a1, v10);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v57 = v4;
    v22 = swift_slowAlloc();
    v60 = v22;
    *v21 = 136315138;
    v23 = NWPath.networkAvailabilityDebugInformation.getter();
    v56 = v6;
    v25 = v24;
    (*(v12 + 8))(v16, v10);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v60);
    v6 = v56;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1DD1FF000, v19, v20, "Received NWPath update: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v4 = v57;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    (*(v12 + 8))(v16, v10);
  }

  NWPath.isExpensive.getter();
  OUTLINED_FUNCTION_15_1();
  (*(v27 + 304))(v28 & 1);
  v29 = NWPath.isConstrained.getter();
  (*(*v2 + 44))(v29 & 1);
  NWPath.status.getter();
  v30 = (*(v6 + 88))(v58, v4);
  v31 = v30 == *MEMORY[0x1E6977D40] || v30 == *MEMORY[0x1E6977D38];
  if (v31)
  {
    if ((NWPath.supportsDNS.getter() & 1) != 0 && (NWPath.supportsIPv4.getter() & 1) == 0)
    {
      NWPath.supportsIPv6.getter();
    }

    OUTLINED_FUNCTION_15_1();
    v35 = (v34 + 256);
    if (v36)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    (*v35)();
    LOBYTE(v60) = v37;
    OUTLINED_FUNCTION_15_1();
    (*(v38 + 208))(&v60);
  }

  else
  {
    OUTLINED_FUNCTION_15_1();
    (*(v32 + 256))(0);
    LOBYTE(v60) = 1;
    OUTLINED_FUNCTION_15_1();
    (*(v33 + 208))(&v60);
    (*(v6 + 8))(v58, v4);
  }

  swift_retain_n();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315394;
    OUTLINED_FUNCTION_15_1();
    (*(v43 + 200))(&v59);
    OUTLINED_FUNCTION_31();
    v48 = v47 & 0xFFFF0000FFFFLL | 0xEC000000656C0000;
    v49 = 0x616C696176616E75;
    if (!v31)
    {
      v49 = 0x6C62616C69617661;
      v48 = 0xE900000000000065;
    }

    if (v44)
    {
      v50 = v49;
    }

    else
    {
      v50 = v46;
    }

    if (v44)
    {
      v51 = v48;
    }

    else
    {
      v51 = v45;
    }

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v60);

    *(v41 + 4) = v52;
    *(v41 + 12) = 1024;
    OUTLINED_FUNCTION_15_1();
    v54 = (*(v53 + 248))();

    *(v41 + 14) = v54 & 1;

    _os_log_impl(&dword_1DD1FF000, v39, v40, "NetworkAvailability.status set to %s. NetworkAvailability.isAvailable set to %{BOOL}d", v41, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  NetworkAvailability.recheckAirplaneModeUnderLock()();
  v55 = v2[13];
  OS_dispatch_semaphore.signal()();
}

uint64_t NWPath.networkAvailabilityDebugInformation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, "dl");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD265F30;
  *(v0 + 32) = NWPath.debugDescription.getter();
  *(v0 + 40) = v1;
  strcpy(v24, "isExpensive: ");
  HIWORD(v24[1]) = -4864;
  v2 = NWPath.isExpensive.getter();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1E12A8C40](v4, v5);

  v6 = v24[1];
  *(v0 + 48) = v24[0];
  *(v0 + 56) = v6;
  strcpy(v24, "supportsDNS: ");
  HIWORD(v24[1]) = -4864;
  v7 = NWPath.supportsDNS.getter();
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x1E12A8C40](v9, v10);

  v11 = v24[1];
  *(v0 + 64) = v24[0];
  *(v0 + 72) = v11;
  _StringGuts.grow(_:)(16);

  strcpy(v24, "supportsIPv4: ");
  HIBYTE(v24[1]) = -18;
  v12 = NWPath.supportsIPv4.getter();
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1E12A8C40](v14, v15);

  v16 = v24[1];
  *(v0 + 80) = v24[0];
  *(v0 + 88) = v16;
  _StringGuts.grow(_:)(16);

  strcpy(v24, "supportsIPv6: ");
  HIBYTE(v24[1]) = -18;
  v17 = NWPath.supportsIPv6.getter();
  v18 = (v17 & 1) == 0;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x1E12A8C40](v19, v20);

  v21 = v24[1];
  *(v0 + 96) = v24[0];
  *(v0 + 104) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  v22 = BidirectionalCollection<>.joined(separator:)();

  return v22;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_34(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_1DD208ED4()
{
  OUTLINED_FUNCTION_4_2();
  v1 = (*(v0 + 296))();
  return OUTLINED_FUNCTION_33(v1);
}

uint64_t NetworkAvailability.isAvailable.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA19NetworkAvailabilityCTt3g5(v4, v3, KeyPath, v6);
}

uint64_t _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA19NetworkAvailabilityCTt3g5(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  type metadata accessor for NetworkAvailability();
  lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(&lazy protocol witness table cache variable for type NetworkAvailability and conformance NetworkAvailability, v5, type metadata accessor for NetworkAvailability, &protocol conformance descriptor for NetworkAvailability);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v10 = a2;

  swift_getAtKeyPath();

  (*(*v9 + 152))(&v8, v6);

  CurrentValueSubject.send(_:)();

  v10 = a2;

  swift_getAtKeyPath();

  (*(*v9 + 112))(&v11);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance NetworkAvailability@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkAvailability();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for NetworkAvailability.PathUpdateHandler(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD209260()
{
  OUTLINED_FUNCTION_4_2();
  v1 = (*(v0 + 344))();
  return OUTLINED_FUNCTION_33(v1);
}

uint64_t NetworkAvailability.status.setter(char *a1)
{
  v2 = *a1;
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA19NetworkAvailabilityCTt3g5(v2, v1, KeyPath, v4);
}

void NetworkAvailability.status.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_9_0(v23 + 24, v29);
  OUTLINED_FUNCTION_7();
  v31 = *(v30 + 176);

  if (v31(v32) && (OUTLINED_FUNCTION_3(), (*(v33 + 144))(&a12, KeyPath), , a12 != 3))
  {

    *v27 = a12;
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v34 + 104))();
  }

  OUTLINED_FUNCTION_45();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_allocObject();
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
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
          result = _StringObject.sharedUTF8.getter();
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

  return MEMORY[0x1E69E7CC0];
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
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

void NetworkAvailability.isAvailable.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  swift_getKeyPath();
  OUTLINED_FUNCTION_17(v23 + 32, &a9);
  OUTLINED_FUNCTION_7();
  v27 = *(v26 + 176);

  if (!v27(v28) || (OUTLINED_FUNCTION_3(), v29 = OUTLINED_FUNCTION_42(), v30(v29), , OUTLINED_FUNCTION_41(), v31))
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_43();
    v32();
  }

  else
  {
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1DD209878()
{
  OUTLINED_FUNCTION_4_2();
  v1 = (*(v0 + 248))();
  return OUTLINED_FUNCTION_33(v1);
}

uint64_t NetworkAvailability.recheckAirplaneModeUnderLock()()
{
  v1 = v0;
  v2 = *(v0 + 88);
  [v2 refresh];
  v3 = [v2 airplaneMode];
  result = (*(*v1 + 392))();
  if (v3 != (result & 1))
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      if (v3)
      {
        v10 = 20047;
      }

      else
      {
        v10 = 4605519;
      }

      if (v3)
      {
        v11 = 0xE200000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DD1FF000, v6, v7, "Airplane mode changed: now %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_15_1();
    v14 = *(v13 + 400);

    return v14(v3);
  }

  return result;
}

void NetworkAvailability.isInAirplaneMode.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  swift_getKeyPath();
  OUTLINED_FUNCTION_17(v23 + 56, &a9);
  OUTLINED_FUNCTION_7();
  v27 = *(v26 + 176);

  if (!v27(v28) || (OUTLINED_FUNCTION_3(), v29 = OUTLINED_FUNCTION_42(), v30(v29), , OUTLINED_FUNCTION_41(), v31))
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_43();
    v32();
  }

  else
  {
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1DD209C34()
{
  OUTLINED_FUNCTION_4_2();
  v1 = (*(v0 + 392))();
  return OUTLINED_FUNCTION_33(v1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return String.init<A>(_:)();
}

__n128 OUTLINED_FUNCTION_26_3(uint64_t a1)
{
  *(v1 - 352) = a1;
  *(v1 - 144) = a1;
  return *(v1 - 384);
}

uint64_t MockablePublished.projectedValue.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_9_0(v1 + v4, v5);
  *a1 = *(v1 + v4);
}

uint64_t lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSo8SAPersonCSg_AA13CurrentDeviceCTt3g5(v21, v23, v22, v20, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSSSg_AA13CurrentDeviceCTt3g5();
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1, ...)
{

  return String.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 68) = a3;
  *(v3 - 96) = a1;
  *(v3 - 88) = a2;

  return type metadata accessor for OSSignpostID();
}

uint64_t MockablePublished.value.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_5();
  v4 = *(v3 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_5_11();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t MockablePublished.value.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_5();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_9_0(v1 + v4, v5);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_5_11();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t SiriEnvironment.__deallocating_deinit()
{
  SiriEnvironment.deinit();
  v0 = OUTLINED_FUNCTION_3_8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SiriEnvironment.deinit()
{

  v1 = *(v0 + 24);
  *(v0 + 24) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 24);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t MockablePublished.deinit()
{
  OUTLINED_FUNCTION_5_11();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_7();

  return v0;
}

uint64_t MockablePublished.__deallocating_deinit()
{
  MockablePublished.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void specialized Dictionary.subscript.getter(uint64_t a1@<X1>, char *a2@<X8>, int a3@<W0>)
{
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v6 & 1) != 0))
  {
    v7 = *(*(a1 + 56) + v5);
  }

  else
  {
    v7 = 7;
  }

  *a2 = v7;
}

uint64_t MobileGestaltDeviceClassProvider.currentDeviceClass.getter@<X0>(char *a1@<X8>)
{
  if (one-time initialization token for classNumberToDeviceClass != -1)
  {
    swift_once();
  }

  v2 = MEMORY[0x1E12A8BC0](0xD000000000000011, 0x80000001DD26BC40);
  v3 = MGGetSInt32Answer();

  swift_beginAccess();
  specialized Dictionary.subscript.getter(static MobileGestaltDeviceClassProvider.classNumberToDeviceClass, a1, v3);
  return swift_endAccess();
}

uint64_t storeEnumTagSinglePayload for HomeInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

SiriUtilities::InputOrigin_optional __swiftcall InputOrigin.init(aceValue:)(Swift::String aceValue)
{
  object = aceValue._object;
  countAndFlagsBits = aceValue._countAndFlagsBits;
  v5 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  v8 = v8 && v7 == object;
  if (v8)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v6);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 0;
LABEL_9:

    goto LABEL_10;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v12 == object)
  {
    v9 = 1;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v11);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 1;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v15 == object)
  {
    v9 = 2;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v14);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 2;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v18 == object)
  {
    v9 = 3;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v17);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 3;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v21 == object)
  {
    v9 = 4;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v20);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 4;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v24 == object)
  {
    v9 = 5;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v23);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 5;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v27 == object)
  {
    v9 = 6;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v26);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 6;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v30 == object)
  {
    v9 = 7;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v29);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 7;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v33 == object)
  {
    v9 = 8;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v32);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 8;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v36 == object)
  {
    v9 = 9;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v35);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 9;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v39 == object)
  {
    v9 = 10;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v38);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 10;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v42 == object)
  {
    v9 = 11;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v41);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 11;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v45 == object)
  {
    v9 = 12;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v44);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 12;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v48 == object)
  {
    v9 = 13;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v47);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 13;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v51 == object)
  {
    v9 = 14;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v50);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 14;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v54 == object)
  {
    v9 = 15;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v53);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 15;
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v8 && v57 == object)
  {
    v9 = 16;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_0(v56);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    v9 = 16;
    goto LABEL_9;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = 17;
  if (v59 == countAndFlagsBits && v60 == object)
  {
    goto LABEL_8;
  }

  v62 = OUTLINED_FUNCTION_0_0(v59);

  if (v62)
  {
    v9 = 17;
  }

  else
  {
    v9 = 18;
  }

LABEL_10:
  *v5 = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for TransformationCapability.TransformationCapabilityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InteractionType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD20AA34);
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

uint64_t _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSSSg_AA13CurrentDeviceCTt3g5()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_10();
  v2 = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(v0, 255, v1, &protocol conformance descriptor for CurrentDevice);
  OUTLINED_FUNCTION_47(v2);
  ObservableObjectPublisher.send()();

  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_19(v3, v4, v5);

  OUTLINED_FUNCTION_7();
  (*(v6 + 152))(&v12);

  CurrentValueSubject.send(_:)();

  v7 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_19(v7, v8, v9);

  OUTLINED_FUNCTION_7();
  (*(v10 + 112))(v13);
}

void static MockablePublished.subscript.setter()
{
  OUTLINED_FUNCTION_15_7();
  v15[1] = v2;
  v16 = v1;
  v4 = v3;
  v5 = *(v0 + 80);
  OUTLINED_FUNCTION_11_13();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_11();
  MEMORY[0x1EEE9AC00](v11);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  type metadata accessor for ObservableObjectPublisher();
  if (swift_dynamicCast())
  {
    ObservableObjectPublisher.send()();
  }

  v18 = v4;
  swift_unknownObjectRetain();

  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7();
  (*(v12 + 152))(&v17);

  v13 = v16;
  CurrentValueSubject.send(_:)();

  v18 = v4;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();

  (*(v7 + 16))(v10, v13, v5);
  OUTLINED_FUNCTION_7();
  (*(v14 + 112))(v10);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v13, v5);
  OUTLINED_FUNCTION_14();
}

uint64_t lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrentDevice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *initializeWithCopy for CooperativeTimeoutResult(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = a2[v5 + 1];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_13;
      case 2:
        v10 = *a2;
        goto LABEL_13;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v10 = *a2;
LABEL_13:
        v11 = (v10 | (v8 << (8 * v6))) + 2;
        v7 = v10 + 2;
        if (v6 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  v12 = a2[v5];
  if (v7 == 1)
  {
    v13 = v12 - 2;
    if (v12 >= 2)
    {
      if (v5 <= 3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 4;
      }

      switch(v14)
      {
        case 1:
          v15 = *a2;
          goto LABEL_33;
        case 2:
          v15 = *a2;
          goto LABEL_33;
        case 3:
          v15 = *a2 | (a2[2] << 16);
          goto LABEL_33;
        case 4:
          v15 = *a2;
LABEL_33:
          v19 = (v15 | (v13 << (8 * v5))) + 2;
          v12 = v15 + 2;
          if (v5 < 4)
          {
            v12 = v19;
          }

          break;
        default:
          break;
      }
    }

    if (v12 == 1)
    {
      v20 = *a2;
      v21 = *a2;
      *a1 = v20;
      v22 = 1;
    }

    else
    {
      (*(v4 + 16))(a1);
      v22 = 0;
    }

    v23 = 1;
  }

  else
  {
    v16 = v12 - 2;
    if (v12 >= 2)
    {
      if (v5 <= 3)
      {
        v17 = v5;
      }

      else
      {
        v17 = 4;
      }

      switch(v17)
      {
        case 1:
          v18 = *a2;
          goto LABEL_40;
        case 2:
          v18 = *a2;
          goto LABEL_40;
        case 3:
          v18 = *a2 | (a2[2] << 16);
          goto LABEL_40;
        case 4:
          v18 = *a2;
LABEL_40:
          v24 = (v18 | (v16 << (8 * v5))) + 2;
          v12 = v18 + 2;
          if (v5 < 4)
          {
            v12 = v24;
          }

          break;
        default:
          break;
      }
    }

    if (v12 == 1)
    {
      v25 = *a2;
      v26 = *a2;
      v23 = 0;
      *a1 = v25;
      v22 = 1;
    }

    else
    {
      (*(v4 + 16))(a1);
      v22 = 0;
      v23 = 0;
    }
  }

  *(a1 + v5) = v22;
  *(a1 + v6) = v23;
  return a1;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

void destroy for CooperativeTimeoutResult(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = v2 + 1;
  v4 = a1[v2 + 1];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        v4 = v7 + 2;
        if (v3 < 4)
        {
          v4 = v8;
        }

        break;
      default:
        break;
    }
  }

  v9 = a1[v2];
  if (v4 == 1)
  {
    v10 = v9 - 2;
    if (v9 >= 2)
    {
      if (v2 <= 3)
      {
        v11 = v2;
      }

      else
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 1:
          goto LABEL_25;
        case 2:
          goto LABEL_27;
        case 3:
          goto LABEL_28;
        case 4:
          goto LABEL_26;
        default:
          break;
      }
    }
  }

  else
  {
    v10 = v9 - 2;
    if (v9 >= 2)
    {
      if (v2 <= 3)
      {
        v12 = v2;
      }

      else
      {
        v12 = 4;
      }

      switch(v12)
      {
        case 1:
LABEL_25:
          v13 = *a1;
          goto LABEL_29;
        case 2:
LABEL_27:
          v13 = *a1;
          goto LABEL_29;
        case 3:
LABEL_28:
          v13 = *a1 | (a1[2] << 16);
          goto LABEL_29;
        case 4:
LABEL_26:
          v13 = *a1;
LABEL_29:
          v14 = (v13 | (v10 << (8 * v2))) + 2;
          v9 = v13 + 2;
          if (v2 < 4)
          {
            v9 = v14;
          }

          break;
        default:
          break;
      }
    }
  }

  if (v9 == 1)
  {
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

void *sub_1DD20B69C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t SiriEnvironment.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[2];
  [v8 lock];
  OUTLINED_FUNCTION_7();
  v10 = (*(v9 + 144))();
  specialized Dictionary.subscript.getter(a1, v10, &v59);

  if (v61)
  {
    if (swift_dynamicCast())
    {
      v11 = v58[0];
LABEL_10:
      [v8 unlock];
      return v11;
    }
  }

  else
  {
    outlined destroy of Any?(&v59, &_sypSgMd, &_sypSgMR);
  }

  if (v3[3])
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_9();
    v13 = v12();
    if (v13)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  v57 = v8;
  OUTLINED_FUNCTION_6_9();
  v15 = SiriEnvironment.InitializingProvider.init<A>(_:)(v14);
  v17 = v16;
  v56 = a1;
  v19 = v18;
  v20 = swift_beginAccess();
  v21 = v3[6];
  *&v59 = v15;
  *(&v59 + 1) = v17;
  v60 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v59;

  v55 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v52, v21);

  OUTLINED_FUNCTION_12((v4 + 6), &v59);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v22 = *(v4[6] + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v22);
  v23 = v22 + 1;
  v24 = v4[6];
  *(v24 + 16) = v22 + 1;
  v25 = (v24 + 24 * v22);
  v25[4] = v15;
  v25[5] = v17;
  v25[6] = v19;
  v4[6] = v24;
  swift_endAccess();
  if (!v55)
  {

    type metadata accessor for SiriEnvironmentStorage();
    v26 = v56;
    OUTLINED_FUNCTION_6_9();
    SiriEnvironmentStorage.__allocating_init<A>(namespace:)();
    v27 = *(a3 + 24);

    OUTLINED_FUNCTION_6_9();
    v11 = v27();
    (*(a3 + 16))(&v59, a2, a3);
    v28 = SiriEnvironment.environment(for:)(&v59);

    v61 = a2;
    *&v59 = v11;
    v29 = *(*v28 + 160);
    swift_unknownObjectRetain();
    v30 = v29(v58);
    specialized Dictionary.subscript.setter(&v59, v26);
    v30(v58, 0);

    OUTLINED_FUNCTION_12((v4 + 6), &v59);
    specialized RangeReplaceableCollection<>.removeLast()();
    swift_endAccess();

    v8 = v57;
    goto LABEL_10;
  }

  *&v59 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 0);
  v32 = v59;
  v33 = (v24 + 48);
  do
  {
    v35 = *(v33 - 1);
    v34 = *v33;
    *&v59 = v32;
    v37 = *(v32 + 16);
    v36 = *(v32 + 24);

    if (v37 >= v36 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      v32 = v59;
    }

    *(v32 + 16) = v37 + 1;
    v38 = v32 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = v34;
    v33 += 3;
    --v23;
  }

  while (v23);

  *&v59 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(116);
  MEMORY[0x1E12A8C40](0xD00000000000002ELL, 0x80000001DD26ACF0);
  v42 = _typeName(_:qualified:)();
  MEMORY[0x1E12A8C40](v42);

  MEMORY[0x1E12A8C40](0xD000000000000042, 0x80000001DD26AD20);
  MEMORY[0x1E12A8C40](v39, v41);
  v43 = v59;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.logger);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v59 = v48;
    *v47 = 136315650;
    v49 = StaticString.description.getter();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v59);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 177;
    *(v47 + 22) = 2080;
    *(v47 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, *(&v43 + 1), &v59);
    _os_log_impl(&dword_1DD1FF000, v45, v46, "FatalError at %s:%lu - %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12AA0F0](v48, -1, -1);
    MEMORY[0x1E12AA0F0](v47, -1, -1);
  }

  v54 = 0;
  v53 = 177;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *static SiriEnvironment.default.getter()
{
  result = static SiriEnvironment.forCurrentTask.getter();
  if (!result)
  {
    if (one-time initialization token for root != -1)
    {
      OUTLINED_FUNCTION_1_12(&one-time initialization token for root);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecutionLocation(uint64_t a1, int a2)
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

void *static SiriEnvironment.forCurrentTask.getter()
{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  TaskLocal.get()();
  v0 = v13;
  if (v13)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.logger);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      v6 = ObjectIdentifier.debugDescription.getter();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1DD1FF000, v2, v3, "SiriEnvironment.forCurrentTask -> %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_27();
LABEL_12:
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);
    v2 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DD1FF000, v2, v10, "SiriEnvironment.forCurrentTask -> nil", v11, 2u);
      goto LABEL_12;
    }
  }

  return v0;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1E12A9730](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    outlined init with copy of Any(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v12[1] = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2;
  v14 = v2 + 64;
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    (*(v5 + 16))(v7, *(v13 + 48) + *(v5 + 72) * i, v4);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    lazy protocol witness table accessor for type SiriEnvironmentStorage.StorageError and conformance SiriEnvironmentStorage.StorageError(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t getEnumTagSinglePayload for HomeInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t SiriEnvironmentValue.__deallocating_deinit()
{
  SiriEnvironmentValue.deinit();
  v0 = OUTLINED_FUNCTION_23();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return swift_allocObject();
}

void withCooperativeTimeout<A>(seconds:cancellableOperation:)()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v5 + 8);

    v7();
  }
}

unint64_t lazy protocol witness table accessor for type CoopTimeoutError and conformance CoopTimeoutError()
{
  result = lazy protocol witness table cache variable for type CoopTimeoutError and conformance CoopTimeoutError;
  if (!lazy protocol witness table cache variable for type CoopTimeoutError and conformance CoopTimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoopTimeoutError and conformance CoopTimeoutError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoopTimeoutError and conformance CoopTimeoutError;
  if (!lazy protocol witness table cache variable for type CoopTimeoutError and conformance CoopTimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoopTimeoutError and conformance CoopTimeoutError);
  }

  return result;
}

uint64_t closure #2 in closure #1 in withCooperativeTimeout<A>(seconds:cancellableOperation:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x1EEE6DFA0](v4);
}

{
  OUTLINED_FUNCTION_8_4();
  lazy protocol witness table accessor for type CoopTimeoutError and conformance CoopTimeoutError();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t *sub_1DD20CA78(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t storeEnumTagSinglePayload for ExecutionLocation(uint64_t result, int a2, int a3)
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

BOOL specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_5_2();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_7_0();
  while (1)
  {
    OUTLINED_FUNCTION_6_1();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_10();
    v6 = *v5 == v3 && v5[1] == v1;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      OUTLINED_FUNCTION_10();
      v8 = v7[1];
      *v0 = *v7;
      v0[1] = v8;

      return v4 == 0;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_11();
  v9 = OUTLINED_FUNCTION_9_1();
  specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v10, v11, v12);
  *v2 = v14;
  *v0 = v3;
  v0[1] = v1;
  return v4 == 0;
}

{
  OUTLINED_FUNCTION_5_2();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_7_0();
  while (1)
  {
    OUTLINED_FUNCTION_6_1();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_10();
    v6 = *v5 == v3 && v5[1] == v1;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      OUTLINED_FUNCTION_10();
      v8 = v7[1];
      *v0 = *v7;
      v0[1] = v8;

      return v4 == 0;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_11();
  v9 = OUTLINED_FUNCTION_9_1();
  specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v10, v11, v12);
  *v2 = v14;
  *v0 = v3;
  v0[1] = v1;
  return v4 == 0;
}

SiriUtilities::ResponseMode_optional __swiftcall ResponseMode.init(aceValue:)(SiriUtilities::ResponseMode_optional aceValue)
{
  v2 = v1;
  if (aceValue.value.aceValue._object)
  {
    object = aceValue.value.aceValue._object;
    countAndFlagsBits = aceValue.value.aceValue._countAndFlagsBits;
    if (one-time initialization token for knownValues != -1)
    {
      swift_once();
    }

    aceValue.value.aceValue._countAndFlagsBits = specialized Set.contains(_:)(countAndFlagsBits, object, static ResponseMode.knownValues);
    if (aceValue.value.aceValue._countAndFlagsBits)
    {
      *v2 = countAndFlagsBits;
      v2[1] = object;
      return aceValue;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  return aceValue;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void Restrictions.init(aceValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v8 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(a2);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v9);
  OUTLINED_FUNCTION_0_30();
  while (1)
  {
    if (v5 == v4)
    {

      *a1 = v8;
      a1[1] = v3;
      return;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    ++v4;
    v11 = *(v6 - 1);
    v10 = *v6;

    v12._countAndFlagsBits = v11;
    v12._object = v10;
    DeviceRestrictions.init(aceValue:)(v12);
    v3 |= v13;
    v6 += 2;
  }

  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x1E12A8FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v6 = result;
  v4 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v6;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;

    specialized Set._Variant.insert(_:)();
  }

  __break(1u);
  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  specialized Sequence._copySequenceContents(initializing:)();
  v4 = v3;
  outlined consume of Set<String>.Iterator._Variant(v6, v7, v8, v9, v10);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, "dl");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_15_7();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_14();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
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
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

SiriUtilities::DeviceRestrictions __swiftcall DeviceRestrictions.init(aceValue:)(Swift::String aceValue)
{
  object = aceValue._object;
  v4 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  v7 = v7 && v6 == object;
  if (v7)
  {

LABEL_8:

    v9 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v5);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_8;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v11 == object)
  {

LABEL_17:

    v9 = 2;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v10);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_17;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v14 == object)
  {

LABEL_25:

    v9 = 4;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v13);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_25;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v17 == object)
  {

LABEL_33:

    v9 = 8;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v16);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_33;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v20 == object)
  {

LABEL_41:

    v9 = 16;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v19);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_41;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v23 == object)
  {

LABEL_49:

    v9 = 32;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v22);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_49;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v26 == object)
  {

LABEL_57:

    v9 = 64;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v25);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_57;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v29 == object)
  {

LABEL_65:

    v9 = 128;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v28);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_65;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v32 == object)
  {

LABEL_73:

    v9 = 256;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v31);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_73;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v35 == object)
  {

LABEL_81:

    v9 = 2048;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v34);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_81;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v38 == object)
  {

LABEL_89:

    v9 = 1024;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0(v37);
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_89;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v41 == object)
  {

    v9 = 512;
  }

  else
  {
    v43 = OUTLINED_FUNCTION_0_0(v40);

    v9 = 512;
    if ((v43 & 1) == 0)
    {
      v9 = 0;
    }
  }

LABEL_9:
  *v4 = v9;
  return result;
}

uint64_t DeviceRestrictions.aceSet.getter()
{
  v1 = *v0;
  v39 = MEMORY[0x1E69E7CD0];
  if (*v0)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_0_5(v6, v7, v8);

    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v9, v10, v11);

  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v12, v13, v14);

  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v15, v16, v17);

  if ((v1 & 0x10) == 0)
  {
LABEL_6:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v18, v19, v20);

  if ((v1 & 0x20) == 0)
  {
LABEL_7:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v21, v22, v23);

  if ((v1 & 0x40) == 0)
  {
LABEL_8:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v24, v25, v26);

  if ((v1 & 0x80) == 0)
  {
LABEL_9:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v27, v28, v29);

  if ((v1 & 0x100) == 0)
  {
LABEL_10:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v30, v31, v32);

  if ((v1 & 0x800) == 0)
  {
LABEL_11:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_0_5(v36, v37, v38);

    if ((v1 & 0x200) == 0)
    {
      return v39;
    }

    goto LABEL_13;
  }

LABEL_24:
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_0_5(v33, v34, v35);

  if ((v1 & 0x400) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((v1 & 0x200) != 0)
  {
LABEL_13:
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_0_5(v2, v3, v4);
  }

  return v39;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities14TypeIdentifierVGMd, "\bq");
  result = static _SetStorage.resize(original:capacity:move:)();
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
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMd, &_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v32 = v3 + 56;
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
    v33 = v10;
    v34 = result;
    v35 = v3;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v36 = (v9 - 1) & v9;
LABEL_12:
        v15 = (*(v3 + 48) + ((v12 | (v6 << 6)) << 6));
        v17 = *v15;
        v16 = v15[1];
        v18 = v15[3];
        v40 = v15[2];
        v41 = v18;
        v38 = v17;
        v39 = v16;
        Hasher.init(_seed:)();
        v19 = *(&v39 + 1);
        MEMORY[0x1E12A9750](v38);
        outlined init with copy of TransformationCapability(&v38, v37);
        String.hash(into:)();
        MEMORY[0x1E12A9750](v19);
        String.hash(into:)();
        String.hash(into:)();
        result = Hasher._finalize()();
        v5 = v34;
        v20 = -1 << *(v34 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
        v3 = v35;
        v10 = v33;
LABEL_21:
        *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v34 + 48) + (v23 << 6));
        v29 = v38;
        v30 = v39;
        v31 = v41;
        v28[2] = v40;
        v28[3] = v31;
        *v28 = v29;
        v28[1] = v30;
        ++*(v34 + 16);
        v9 = v36;
        if (!v36)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      v3 = v35;
      v10 = v33;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
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

          goto LABEL_25;
        }

        v14 = *(v32 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v36 = (v14 - 1) & v14;
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

uint64_t getEnumTagSinglePayload for InputOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriEnvironmentKeyValuePairs(uint64_t result, int a2, int a3)
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

uint64_t static AudioSource.lineIn.getter@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  *a5 = *a2;
  a5[1] = v8;
}

uint64_t getEnumTagSinglePayload for SiriEnvironmentKeyValuePairs(uint64_t *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PersonalDomainsAuthenticationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD20DCE8);
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

uint64_t sub_1DD20DD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t SiriEnvironment.currentDevice.getter()
{
  v0 = type metadata accessor for CurrentDevice();
  OUTLINED_FUNCTION_7();
  v4 = *(v1 + 208);
  v2 = OUTLINED_FUNCTION_4_8(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice);

  return v4(v0, v0, v2);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CurrentDevice@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CurrentDevice();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return dispatch thunk of ObservableObject.objectWillChange.getter();
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
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
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities14TypeIdentifierVGMd, "\bq");
  result = static _SetStorage.resize(original:capacity:move:)();
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
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
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
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMd, &_ss11_SetStorageCy13SiriUtilities24TransformationCapabilityVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:
    v34 = v5;

    *v2 = v34;
    return result;
  }

  v6 = 0;
  v37 = (v3 + 56);
  v38 = v3;
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
  v35 = v1;
  v36 = (v7 + 63) >> 6;
  v10 = result + 56;
  v39 = result;
  if (!v9)
  {
LABEL_7:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v36)
      {
        break;
      }

      v13 = v37[v6];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v40 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      v33 = v5;
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v32 + 63) >> 6, v37);
      v5 = v33;
    }

    else
    {
      *v37 = -1 << v32;
    }

    v2 = v35;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v9));
    v40 = (v9 - 1) & v9;
LABEL_12:
    v14 = *(v3 + 48) + ((v11 | (v6 << 6)) << 6);
    v15 = *v14;
    *v41 = *(v14 + 1);
    *&v41[3] = *(v14 + 4);
    v17 = *(v14 + 8);
    v16 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    v21 = *(v14 + 48);
    v22 = *(v14 + 56);
    Hasher.init(_seed:)();
    MEMORY[0x1E12A9750](v15 & 1);
    String.hash(into:)();
    MEMORY[0x1E12A9750](v18);
    String.hash(into:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v5 = v39;
    v23 = -1 << *(v39 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v10 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v39 + 48) + (v26 << 6);
    *v31 = v15;
    *(v31 + 1) = *v41;
    *(v31 + 4) = *&v41[3];
    v9 = v40;
    *(v31 + 8) = v17;
    *(v31 + 16) = v16;
    *(v31 + 24) = v18;
    *(v31 + 32) = v19;
    *(v31 + 40) = v20;
    *(v31 + 48) = v21;
    *(v31 + 56) = v22;
    ++*(v39 + 16);
    v3 = v38;
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v10 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t CurrentDevice.setRestrictedCommands(_:)(void *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = *(*v1 + 648);

  return v3(v5);
}

uint64_t CurrentDevice.restrictedCommands.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSSSg_AA13CurrentDeviceCTt3g5();
}

uint64_t *assignWithCopy for Restrictions(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for Restrictions(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PluginBundleError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v2);
  return Hasher._finalize()();
}

uint64_t BargeInContext.init(mode:approximatePreviousTTSInterval:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  v4 = a3 + *(type metadata accessor for BargeInContext(0) + 20);

  return outlined init with take of DateInterval?(a2, v4);
}

uint64_t type metadata accessor for BargeInContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for BargeInContext;
  if (!type metadata singleton initialization cache for BargeInContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD20E520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

void CurrentDevice.siriLocale.getter()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17(v0 + 72, &v15);
  v7 = *(v0 + 72);
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 184);

  v11 = v9(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_3();
    (*(v12 + 144))(KeyPath);

    v13 = type metadata accessor for Locale();
    if (__swift_getEnumTagSinglePayload(v5, 1, v13) != 1)
    {

      (*(*(v13 - 8) + 32))(v2, v5, v13);
      goto LABEL_6;
    }

    v11 = outlined destroy of Locale?(v5);
  }

  (*(*v7 + 104))(v11);

LABEL_6:

  OUTLINED_FUNCTION_50();
}

uint64_t OUTLINED_FUNCTION_48()
{
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(int a1)
{
  v3 = MEMORY[0x1E12A9720](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CurrentDevice.preferencesLanguageCode.getter()
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_9_0(v0 + 64, v2);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 184);

  if (v4(v5) && (OUTLINED_FUNCTION_3(), (*(v6 + 144))(v10, KeyPath), , v10[1] != 1))
  {
    v8 = v10[0];
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v7 + 104))(v10);

    return v10[0];
  }

  return v8;
}

uint64_t sub_1DD20EAD0()
{
  OUTLINED_FUNCTION_4_2();
  result = (*(v1 + 448))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginBundleError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t CurrentDevice.isCarPlay.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 896))(&v2);
  return (v2 >> 4) & 1;
}

uint64_t CurrentDevice.restrictions.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  (*(v2 + 640))(v5);
  v3 = v5[1];

  *a1 = v3;
  return result;
}

uint64_t CurrentDevice.restrictedCommands.getter@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17(v1 + 96, v12);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 184);

  if (v5(v6))
  {
    OUTLINED_FUNCTION_3();
    (*(v7 + 144))(v11, KeyPath);

    if (v11[0])
    {

      v9 = v11[1];
      *a1 = v11[0];
      a1[1] = v9;
      return result;
    }
  }

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_19_2();
  v10();
}

uint64_t CurrentDevice.deviceIdiom.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_0();

  v4 = OUTLINED_FUNCTION_23_2();

  return a4(v4);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSSSg_AA13CurrentDeviceCTt3g5();
}

__n128 OUTLINED_FUNCTION_24_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22)
{
  result = a22;
  a1[1] = a22;
  return result;
}

uint64_t CurrentDevice.setSiriLocale(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return (*(*v1 + 504))(v5);
}

void CurrentDevice.siriLocale.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_49();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_5_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  (*(v25 + 16))(v28, v22, v23);

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZ10Foundation6LocaleV_AA13CurrentDeviceCTt3g5(v28, v18, KeyPath, v30);
  (*(v25 + 8))(v22, v23);
  OUTLINED_FUNCTION_50();
}

uint64_t _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZ10Foundation6LocaleV_AA13CurrentDeviceCTt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_5_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_0();
  v12 = v11 - v10;
  type metadata accessor for CurrentDevice();
  OUTLINED_FUNCTION_0_10();
  lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(v13, 255, v14, &protocol conformance descriptor for CurrentDevice);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v19 = a2;

  swift_getAtKeyPath();

  OUTLINED_FUNCTION_7();
  (*(v15 + 152))(&v18);

  CurrentValueSubject.send(_:)();

  v19 = a2;

  swift_getAtKeyPath();

  (*(v8 + 16))(v12, a1, v6);
  OUTLINED_FUNCTION_7();
  (*(v16 + 112))(v12);

  return (*(v8 + 8))(a1, v6);
}

Swift::Void __swiftcall CurrentDevice.setPreferencesLanguageCode(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = *(*v1 + 456);

  v4(countAndFlagsBits, object);
}

uint64_t CurrentDevice.preferencesLanguageCode.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_0();

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSSSg_AA13CurrentDeviceCTt3g5();
}

void CurrentDevice.isTextToSpeechEnabled.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  CurrentDevice.isTextToSpeechEnabled.setter(a1, &unk_1DD267420, &unk_1DD267448, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_0();

  v23 = OUTLINED_FUNCTION_23_2();

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA13CurrentDeviceCTt3g5(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

void *assignWithTake for ExecutionLocation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

SiriUtilities::InteractionType_optional __swiftcall InteractionType.init(aceValue:)(Swift::String aceValue)
{
  object = aceValue._object;
  countAndFlagsBits = aceValue._countAndFlagsBits;
  v4 = v1;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5 == countAndFlagsBits && v6 == object)
  {
    v9 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v8 = OUTLINED_FUNCTION_0_28(v5);

  if (v8)
  {
    v9 = 1;
LABEL_9:

    goto LABEL_10;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11 == countAndFlagsBits && v12 == object)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v14 = OUTLINED_FUNCTION_0_28(v11);

  if (v14)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

LABEL_10:
  *v4 = v9;
  return result;
}

uint64_t SiriEnvironment.currentProcess.getter()
{
  v0 = type metadata accessor for CurrentProcess();
  OUTLINED_FUNCTION_7();
  v4 = *(v1 + 208);
  v2 = OUTLINED_FUNCTION_0_17(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess);

  return v4(v0, v0, v2);
}

uint64_t lazy protocol witness table accessor for type CurrentProcess and conformance CurrentProcess(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrentProcess();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CurrentProcess.idleTracker.getter()
{
  KeyPath = swift_getKeyPath();
  v2 = OBJC_IVAR___SUCurrentProcess__idleTracker;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);

  v6 = v4(v5);
  if (v6 && ((*(*v6 + 144))(&v9, KeyPath), , v7 = v9, v9 != 1))
  {
  }

  else
  {
    (*(*v3 + 104))(&v9);

    return v9;
  }

  return v7;
}

void _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA13CurrentDeviceCTt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v23;
  a23 = v24;
  OUTLINED_FUNCTION_13_0();
  a15 = v25;
  type metadata accessor for CurrentDevice();
  OUTLINED_FUNCTION_0_10();
  v28 = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(v26, 255, v27, &protocol conformance descriptor for CurrentDevice);
  OUTLINED_FUNCTION_11_2(v28);
  ObservableObjectPublisher.send()();

  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_10_2(v29, v30);

  OUTLINED_FUNCTION_2_5();
  (*(v31 + 152))(&a9);

  CurrentValueSubject.send(_:)();

  v32 = OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_2(v32, v33);

  OUTLINED_FUNCTION_2_5();
  (*(v34 + 112))(&a15);

  OUTLINED_FUNCTION_45();
}

uint64_t ManagedContinuation.resume(returning:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = type metadata accessor for Result();
  OUTLINED_FUNCTION_5_0();
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_5_11();
  (*(v9 + 16))(v1, a1, v4);
  swift_storeEnumTagMultiPayload();
  ManagedContinuation.resume(with:)(v1);
  return (*(v7 + 8))(v1, v5);
}

uint64_t closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:);
  }

  else
  {
    v5 = closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:);
  }

  return MEMORY[0x1EEE6DFA0](v5);
}

{
  OUTLINED_FUNCTION_4_3();
  $defer #1 <A>() in closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
  OUTLINED_FUNCTION_9();

  return v0();
}

{
  v15 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.logger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = ObjectIdentifier.debugDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DD1FF000, v2, v3, "SiriEnvironment.forCurrentTask <- %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v13 = (v0[4] + *v0[4]);
  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  v0[6] = v9;
  *v9 = v10;
  v9[1] = closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:);
  v11 = v0[2];

  return v13(v11);
}

{
  OUTLINED_FUNCTION_4_3();
  $defer #1 <A>() in closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
  OUTLINED_FUNCTION_9();

  return v0();
}

void $defer #1 <A>() in closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0(&one-time initialization token for logger);
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD1FF000, oslog, v1, "SiriEnvironment.forCurrentTask <- nil", v2, 2u);
    OUTLINED_FUNCTION_27();
  }
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:));
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v5();
  }
}

{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;

  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:);
  v7 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v7, v0 + 16, &async function pointer to partial apply for closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:), v3, 0, 0, 0xD000000000000034, 0x80000001DD26B7F0);
}

{
  OUTLINED_FUNCTION_9();
  return v0();
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:));
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v6();
  }
}

{
  OUTLINED_FUNCTION_4_3();
  v1 = (*(v0[8] + 8))(v0[6]);
  v0[10] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  v0[11] = v2;
  *v2 = v3;
  v2[1] = static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:);
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(v7, v1, v5, v6, v4);
}

{
  OUTLINED_FUNCTION_4_3();

  OUTLINED_FUNCTION_9();

  return v0();
}

void static MockablePublished.subscript.getter()
{
  OUTLINED_FUNCTION_15_7();
  v2 = v1;
  v22 = v3;
  v23 = v4;
  v6 = v5;
  v8 = *v7;
  v9 = *(v0 + 80);
  v10 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v24[4] = v6;
  swift_unknownObjectRetain();
  v16 = swift_readAtKeyPath();
  v18 = *v17;

  v16(v24, 0);
  swift_unknownObjectRelease();
  v19 = (*(v2 + 32))(*(v8 + *MEMORY[0x1E69E6F98]), v2);
  if (v19)
  {
    (*(*v19 + 144))(v22);

    if (__swift_getEnumTagSinglePayload(v15, 1, v9) != 1)
    {

      OUTLINED_FUNCTION_5_11();
      (*(v20 + 32))(v23, v15, v9);
      goto LABEL_6;
    }

    v19 = (*(v12 + 8))(v15, v10);
  }

  (*(*v18 + 104))(v19);

LABEL_6:
  OUTLINED_FUNCTION_14();
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_15();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SiriEnvironment.existingProvider<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  [v7 lock];
  OUTLINED_FUNCTION_7();
  v9 = (*(v8 + 144))();
  specialized Dictionary.subscript.getter(a1, v9, &v14);

  if (v15)
  {
    if (swift_dynamicCast())
    {
      v10 = v13;
      goto LABEL_7;
    }
  }

  else
  {
    outlined destroy of Any?(&v14, &_sypSgMd, &_sypSgMR);
  }

  v10 = *(v3 + 24);
  if (v10)
  {
    OUTLINED_FUNCTION_7();
    v10 = (*(v11 + 192))(a1, a2, a3);
  }

LABEL_7:
  [v7 unlock];
  return v10;
}

uint64_t static SiriEnvironmentValue.subscript.getter(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v12 - v5, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pMd, &_s13SiriUtilities0A19EnvironmentLocating_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Transforming(v12, v14);
    v7 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = (*(v8 + 8))(v7, v8);

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    outlined destroy of SiriEnvironmentLocating?(v12);
    type metadata accessor for SiriEnvironment();
    v9 = static SiriEnvironment.default.getter();
  }

  swift_getAtKeyPath();
  v10 = *(v14[0] + 16);

  v10(v9);
}

uint64_t outlined destroy of SiriEnvironmentLocating?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A19EnvironmentLocating_pSgMd, &_s13SiriUtilities0A19EnvironmentLocating_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in SiriEnvironmentValue.init(_:)(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ObjectAssociation.value(for:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v9 = v1;
  v10 = a1;
  v11 = a1;
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Optional();
  return v5(partial apply for closure #1 in ObjectAssociation.value(for:), &v8, v6, v3, v4);
}

void *SiriEnvironmentLocating<>.siriEnvironment.getter()
{
  if (one-time initialization token for cache != -1)
  {
    OUTLINED_FUNCTION_0_31(&one-time initialization token for cache);
  }

  (*(*static ProcessWideEnvironment.cache + 144))(&v2, v0);
  result = v2;
  if (!v2)
  {
    type metadata accessor for SiriEnvironment();
    return static SiriEnvironment.default.getter();
  }

  return result;
}

uint64_t SimpleLock.withLocked<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return SimpleLock.withLocked<A>(_:)(a1, a2, a4, a4, a5);
}

{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 16))(a3, a5);
}

Swift::Void __swiftcall DispatchSemaphoreLock.takeLock()()
{
  v1 = *(v0 + 16);
  OS_dispatch_semaphore.wait()();
}

uint64_t closure #1 in ObjectAssociation.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v30 = a5;
  v31 = *(*a1 + 80);
  v6 = type metadata accessor for ObjectEntry(255, v31, a3, a4);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v26 - v15;
  v17 = SiriEnvironmentStorage.storage.getter();
  v29 = a2;
  v32[0] = a2;
  MEMORY[0x1E12A8B50](v32, v17, MEMORY[0x1E69E5FE0], v6, MEMORY[0x1E69E5FE8]);

  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v14 + 32))(v16, v13, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    v19 = v14;
    if (Strong)
    {
      v20 = Strong;
      swift_unknownObjectRelease();
      if (v20 == v27)
      {
        v24 = v30;
        v23 = v31;
        (*(*(v31 - 8) + 16))(v30, &v16[*(v6 + 28)], v31);
        (*(v19 + 8))(v16, v6);
        v22 = 0;
        return __swift_storeEnumTagSinglePayload(v24, v22, 1, v23);
      }
    }

    v32[4] = v29;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v21 = v28;
    Dictionary.removeValue(forKey:)();
    (*(v8 + 8))(v21, v7);
    swift_endAccess();
    (*(v19 + 8))(v16, v6);
  }

  v22 = 1;
  v24 = v30;
  v23 = v31;
  return __swift_storeEnumTagSinglePayload(v24, v22, 1, v23);
}

uint64_t initializeWithCopy for ObjectEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_unknownObjectWeakCopyInit();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 16))((*(v7 + 80) + 8 + v6) & ~*(v7 + 80), (*(v7 + 80) + 8 + a2) & ~*(v7 + 80));
  return a1;
}

void storeEnumTagSinglePayload for ObjectEntry(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x1DD211120);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:
        v20 = &a1[v9 + 8] & ~v9;

        __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
      }

      return;
  }
}

uint64_t initializeWithTake for ObjectEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_unknownObjectWeakTakeInit();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 32))((*(v7 + 80) + 8 + v6) & ~*(v7 + 80), (*(v7 + 80) + 8 + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ObjectEntry(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
  }

  v9 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

uint64_t destroy for ObjectEntry(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E12AA1D0]();
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

Swift::Void __swiftcall DispatchSemaphoreLock.releaseLock()()
{
  v1 = *(v0 + 16);
  OS_dispatch_semaphore.signal()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InputOrigin@<X0>(uint64_t *a1@<X8>)
{
  result = InputOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t InputOrigin.rawValue.getter()
{
  result = 0x6547746E65696C63;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return 0xD000000000000011;
    case 3:
      return 0xD000000000000012;
    case 5:
      return result;
    case 6:
      v3 = 0x676F6C616964;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 7:
      return 0x74747542656D6F68;
    case 8:
      return 0x6C6F46737567616DLL;
    case 9:
      v2 = 0x6E6F69746F6DLL;
      goto LABEL_8;
    case 0xA:
      return 0x716552726F697270;
    case 0xB:
      return 0x536F546573696172;
    case 0xC:
      return 0x704165746F6D6572;
    case 0xD:
      v3 = 0x65746F6D6572;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0xE:
      v2 = 0x726576726573;
LABEL_8:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
      break;
    case 0xF:
      result = 0x6665526F54706174;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 0x11:
      result = 0x6972546563696F76;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t closure #1 in ObjectAssociation.store(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a1 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - v8;
  v12 = type metadata accessor for ObjectEntry(255, v6, v10, v11);
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v17 - v14;
  (*(v7 + 16))(v9, a4, v6);
  swift_unknownObjectRetain();
  ObjectEntry.init(key:value:)(v9, v6, v15);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v12);
  v17[5] = a2;
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

uint64_t ObjectEntry.init(key:value:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v9 = type metadata accessor for ObjectEntry(0, a3, v7, v8);
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 28);

  return v10(v11, a2, a3);
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x1EEE693F0]();
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 48);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *(v5 - 1);
    v8 = *v5;
    v12[0] = *(v5 - 2);
    v12[1] = v7;
    v12[2] = v8;

    v9 = a1(v12);
    if (v3)
    {

      return v6 != 0;
    }

    v10 = v9;
    v5 += 3;
  }

  while ((v10 & 1) == 0);
  return v6 != 0;
}

uint64_t SiriEnvironmentStorage.__allocating_init<A>(namespace:)()
{
  v0 = swift_allocObject();
  SiriEnvironmentStorage.init<A>(namespace:)();
  return v0;
}

uint64_t InteractionType.aceInteractionType.getter()
{
  if (*v0)
  {
    return 0x7244676F6C616944;
  }

  else
  {
    return 0x4479616C70736944;
  }
}

uint64_t ExecutionLocation.isUnknown.getter()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *v0;
  v2 = v0[1];
  v4 = v1 == v3 && v2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_2_1(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v6 = v1 == 1701736302 && v2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_2_1(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v1 == 0x726576726573 ? (v7 = v2 == 0xE600000000000000) : (v7 = 0), v7))
    {
      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_1();
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = 0;
      v10 = v1 == 0x656369766564 && v2 == 0xE600000000000000;
      if ((v8 & 1) == 0 && !v10)
      {
        OUTLINED_FUNCTION_2_1();
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
      }
    }
  }

  return v5 & 1;
}

uint64_t ExecutionLocation.description.getter()
{
  v1 = *v0;
  if (ExecutionLocation.isUnknown.getter())
  {
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
  }

  return v1;
}

void *SiriEnvironment.init(parent:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v1[6] = MEMORY[0x1E69E7CC0];
  v1[7] = MEMORY[0x1E69E7CC8];
  v1[2] = v3;
  v1[3] = a1;
  v1[4] = 0;
  v1[5] = 0;
  OUTLINED_FUNCTION_12((v1 + 6), v5);

  specialized Array.reserveCapacity(_:)(8);
  swift_endAccess();

  return v1;
}

void specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = v4;
  }

  *v1 = v3;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_6_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_9();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  OUTLINED_FUNCTION_3_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities0D11EnvironmentC20InitializingProvider33_20CF7F1B525A92BC26D56D0E773ECAB3LLVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities0D11EnvironmentC20InitializingProvider33_20CF7F1B525A92BC26D56D0E773ECAB3LLVGMR);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_8_7(v7);
    OUTLINED_FUNCTION_5_7(v8 / 24);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_7_6();
  if (v1)
  {
    if (v3 != v0 || &v10[24 * v2] <= v9)
    {
      memmove(v9, v10, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_9();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  OUTLINED_FUNCTION_3_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities24TransformationCapabilityVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities24TransformationCapabilityVGMR);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_8_7(v7);
    OUTLINED_FUNCTION_5_7(v8 / 64);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_7_6();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_9();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  OUTLINED_FUNCTION_3_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities24TransformationDescriptorVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities24TransformationDescriptorVGMR);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_8_7(v7);
    OUTLINED_FUNCTION_5_7(v8 / 56);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_7_6();
  if (v1)
  {
    if (v3 != v0 || &v10[56 * v2] <= v9)
    {
      memmove(v9, v10, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_9();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_4_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  OUTLINED_FUNCTION_3_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities19TransformationChainVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities19TransformationChainVGMR);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_8_7(v7);
    OUTLINED_FUNCTION_5_7(v8 / 8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_7_6();
  if (v1)
  {
    if (v3 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t SiriEnvironment.requireProvider<A>(of:)()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 208))();

  return swift_unknownObjectRelease();
}

void CurrentDevice.identifiedUserMeCard.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v21;
  a20 = v22;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17(v20 + 24, &a9);
  OUTLINED_FUNCTION_7();
  v25 = *(v24 + 184);

  if (v25(v26) && (OUTLINED_FUNCTION_3(), (*(v27 + 144))(&a12, KeyPath), , a12 != 1))
  {
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v28 + 104))(&a12);
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1DD2120FC()
{
  OUTLINED_FUNCTION_4_2();
  result = (*(v1 + 208))();
  *v0 = result;
  return result;
}

uint64_t specialized MockablePublished.init(wrappedValue:)(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  v5 = OUTLINED_FUNCTION_34(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_22(v7);
  v8 = a1;
  v9 = CurrentValueSubject.init(_:)();
  return OUTLINED_FUNCTION_39(v9);
}

uint64_t specialized MockablePublished.init(wrappedValue:)(void *a1)
{
  return specialized MockablePublished.init(wrappedValue:)(a1, &_s7Combine19CurrentValueSubjectCy13SiriUtilities11IdleTrackerCSgs5NeverOGMd);
}

{
  return specialized MockablePublished.init(wrappedValue:)(a1, &_s7Combine19CurrentValueSubjectCySo8SAPersonCSgs5NeverOGMd);
}

uint64_t OUTLINED_FUNCTION_23_0()
{
}

void *SiriEnvironment.environment(for:)(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2)
  {

    return v1;
  }

  v3 = *a1;
  swift_retain_n();
  v4 = v1;
  while (1)
  {
    v5 = v1[5];
    if (v5)
    {
      v6 = v1[4] == v3 && v5 == v2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v4 = v1;
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_12:
    v7 = v1[3];

    if (!v7)
    {
      return v4;
    }

    v1 = v7;
  }
}

double static SiriEnvironmentProvider.defaultScope.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 2.73405468e161;
  *a1 = xmmword_1DD269430;
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_2_18();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySOypGMd, &_ss17_NativeDictionaryVySOypGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    goto LABEL_5;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = (*(v16 + 56) + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return outlined init with take of Any(a1, v17);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a1, v16);
  }
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_4_7(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + 8 * v5) = v7;
  result = outlined init with take of Any(v8, (*(v6 + 56) + 32 * v5));
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

uint64_t SiriEnvironmentStorage.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void specialized RangeReplaceableCollection<>.removeLast()()
{
  if (*(*v0 + 16))
  {
    specialized Array._customRemoveLast()();
    if (!v1)
    {
      specialized Array.remove(at:)(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized Array._customRemoveLast()()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t storeEnumTagSinglePayload for Transformer(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Transformer(uint64_t *a1, int a2)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_10_3();
}

uint64_t partial apply for closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = closure #1 in withTimeout<A>(seconds:operation:);

  return closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(a1, v4, v6, v5);
}

uint64_t static ResponseMode.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id CurrentProcess.init(storage:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SUCurrentProcess_mock] = 0;
  v2 = OBJC_IVAR___SUCurrentProcess__idleTracker;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11IdleTrackerCSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11IdleTrackerCSgGMR);
  swift_allocObject();
  *&v1[v2] = specialized MockablePublished.init(wrappedValue:)(0);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CurrentProcess();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

_OWORD *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
  }

  else
  {
    outlined destroy of Any?(a1, &_sypSgMd, &_sypSgMR);
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v10 = *(*v2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySOypGMd, &_ss17_NativeDictionaryVySOypGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
      outlined init with take of Any((*(v12 + 56) + 32 * v8), v13);
      _NativeDictionary._delete(at:)();
      *v2 = v12;
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    return outlined destroy of Any?(v13, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return OUTLINED_FUNCTION_10_3();
}

uint64_t closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:));
}

uint64_t ExecutionLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_5_1();
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ObjectAssociation.subscript.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 80);
  v6 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  (*(v8 + 16))(v11, a1, v6);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v17 = *(v8 + 8);
    v17(v11, v6);
    ObjectAssociation.clear(for:)(a2);
    swift_unknownObjectRelease();
    return (v17)(a1, v6);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v5);
    ObjectAssociation.store(value:for:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(a1, v6);
    return (*(v13 + 8))(v16, v5);
  }
}

uint64_t SiriEnvironmentLocating<>.siriEnvironment.setter(uint64_t a1)
{
  if (one-time initialization token for cache != -1)
  {
    OUTLINED_FUNCTION_0_31(&one-time initialization token for cache);
  }

  v5 = a1;
  v3 = *(*static ProcessWideEnvironment.cache + 152);

  swift_unknownObjectRetain();
  v3(&v5, v1);
}

uint64_t ObjectAssociation.store(value:for:)()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  OUTLINED_FUNCTION_2_7();
  return v1();
}

uint64_t MockablePublished.init(wrappedValue:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  OUTLINED_FUNCTION_11_13();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v10 = *(v5 + 16);
  v10((v1 + *(v9 + 88)), a1, v3);
  v10(v8, a1, v3);
  MockablePublished.Publisher.init(_:)(v8, v3, &v15);
  (*(v5 + 8))(a1, v3);
  OUTLINED_FUNCTION_7();
  *(v1 + *(v11 + 96)) = v12;
  return v1;
}

uint64_t MockablePublished.Publisher.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentValueSubject();
  (*(v6 + 16))(v8, a1, a2);
  v9 = CurrentValueSubject.__allocating_init(_:)();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t SiriEnvironment.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  [v7 lock];
  v13[3] = a3;
  v13[0] = a1;
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 160);
  swift_unknownObjectRetain();
  v10 = v9(v12);
  specialized Dictionary.subscript.setter(v13, a2);
  v10(v12, 0);
  [v7 unlock];
  return swift_unknownObjectRelease();
}

uint64_t SiriEnvironment.networkAvailability.getter()
{
  v0 = type metadata accessor for NetworkAvailability();
  OUTLINED_FUNCTION_7();
  v7 = *(v1 + 208);
  OUTLINED_FUNCTION_1_4();
  v5 = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(v2, v3, v4, &protocol conformance descriptor for NetworkAvailability);

  return v7(v0, v0, v5);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InteractionType@<X0>(uint64_t *a1@<X8>)
{
  result = InteractionType.aceInteractionType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL CurrentDevice.isHomePod.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 1;
}

BOOL CurrentDevice.isWatch.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 6;
}

BOOL CurrentDevice.isMac.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 2;
}

BOOL CurrentDevice.isAppleTV.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 7;
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);

  TaskLocal.withValue<A>(_:operation:file:line:)();
}

void closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, void (*a2)(void))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v6 = 136315138;
    v7 = ObjectIdentifier.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1DD1FF000, v4, v5, "SiriEnvironment.forCurrentTask <- %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12AA0F0](v10, -1, -1);
    MEMORY[0x1E12AA0F0](v6, -1, -1);
  }

  a2();
  $defer #1 <A>() in closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
}

BOOL CurrentDevice.isPhone.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 5;
}

BOOL CurrentDevice.isPad.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 3;
}

uint64_t PluginCapabilityCatalog.getPackages(capability:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v3 = (*(v2 + 176))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_40_1();
  v5 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  MEMORY[0x1E12A8B50](&v8, a1, v3, AssociatedTypeWitness, v5, AssociatedConformanceWitness);

  result = v8;
  if (!v8)
  {
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

BOOL CurrentDevice.isReality.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 8;
}

uint64_t ExecutionLocation.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

unint64_t CurrentDevice.isCarDNDMode.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 896))(&v2);
  return (v2 >> 1) & 1;
}

uint64_t Transformer.init(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a4;
  a5[2] = partial apply for closure #1 in Transformer.init(transform:);
  a5[3] = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void CurrentDevice.isTextToSpeechEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17(v23 + 40, &a9);
  OUTLINED_FUNCTION_7();
  v28 = *(v27 + 184);

  if (v28(v29) && (OUTLINED_FUNCTION_3(), (*(v30 + 144))(&a15, KeyPath), , a15 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v31 + 104))(&a15);
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1DD2142F4()
{
  OUTLINED_FUNCTION_4_2();
  result = (*(v1 + 304))();
  *v0 = result & 1;
  return result;
}

void CurrentDevice.isLockedWithPasscode.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17(v23 + 48, &a9);
  OUTLINED_FUNCTION_7();
  v28 = *(v27 + 184);

  if (v28(v29) && (OUTLINED_FUNCTION_3(), (*(v30 + 144))(&a15, KeyPath), , a15 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v31 + 104))(&a15);
  }

  OUTLINED_FUNCTION_45();
}