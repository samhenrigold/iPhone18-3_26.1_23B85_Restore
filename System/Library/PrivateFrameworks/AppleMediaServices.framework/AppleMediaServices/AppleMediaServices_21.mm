uint64_t sub_192C74324(uint64_t a1)
{
  swift_willThrow();
  v4 = OUTLINED_FUNCTION_33_10();
  v5 = OUTLINED_FUNCTION_49(v4);
  v1[10] = v3;
  *(v5 + 16) = xmmword_192FBCD40;
  v1[13] = v2;
  v6 = v3;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_192F967CC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = v1[27];
  v13 = OUTLINED_FUNCTION_90(v1[30]);
  *(v13 + 16) = xmmword_192FBCD50;
  sub_19286C588((v1 + 10), (v1 + 18));
  sub_19286CFC8(v1 + 18, v9, v11, v13 + 32);
  OUTLINED_FUNCTION_36_13();
  v14._object = 0x800000019301F320;
  v14._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.init(stringLiteral:)(v14);
  swift_getErrorValue();
  v15 = v1[22];
  v16 = v1[23];
  v1[13] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 10);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v15, v16);
  static LogInterpolation.traceableSensitive(_:)((v1 + 10), (v5 + 48));
  sub_192907DE8((v1 + 10));
  LOBYTE(v15) = sub_192F96E5C();
  if (os_log_type_enabled(v12, v15))
  {
    v18 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_71();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_10_22(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_1_41();
    v20 = sub_192F9674C();
    v22 = v21;

    objc_autoreleasePoolPop(v18);
    v23 = objc_autoreleasePoolPush();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v25 = OUTLINED_FUNCTION_90(v24);
    *(v25 + 16) = xmmword_192FBCD50;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1928FDB30();
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    OUTLINED_FUNCTION_60();
    sub_192F9622C(v26);

    objc_autoreleasePoolPop(v23);
  }

  v28 = v1[34];
  v27 = v1[35];
  v30 = v1[32];
  v29 = v1[33];
  v31 = v1[31];

  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v32();
}

id AMSChildAccountStorefrontTask.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_192C74754(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_192C74814;

  return sub_192C71E88(a1, v4, v5, v6);
}

uint64_t sub_192C74814()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

id CodableResponseDecoder.__allocating_init(rootClass:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AMSCodableResponseDecoder_rootClass] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id CodableResponseDecoder.init(rootClass:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AMSCodableResponseDecoder_rootClass] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CodableResponseDecoder();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_192C749E0(void *a1)
{
  sub_192F9543C();
  swift_allocObject();
  sub_192F9542C();
  v4 = dynamic_cast_existential_2_conditional(*(v1 + OBJC_IVAR___AMSCodableResponseDecoder_rootClass), *(v1 + OBJC_IVAR___AMSCodableResponseDecoder_rootClass), MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  if (!v4)
  {
    v14 = sub_192F9679C();
    v15 = sub_192F9679C();
    AMSError(2, v14, v15, 0);

    swift_willThrow();
LABEL_6:

    return a1;
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = [a1 data];
  v11 = sub_192F95B7C();
  v13 = v12;

  v25 = v7;
  v26 = v8;
  v27 = v9;
  __swift_allocate_boxed_opaque_existential_0(v24);
  sub_192F9541C();
  if (!v2)
  {
    sub_19290CA6C(v11, v13);
    v16 = v25;
    v17 = __swift_project_boxed_opaque_existential_0(v24, v25);
    v18 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v17, v17);
    v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_192F9774C();
    (*(v18 + 8))(v20, v16);
    __swift_destroy_boxed_opaque_existential_0(v24);
    [a1 setObject_];
    swift_unknownObjectRelease();
    v22 = a1;
    goto LABEL_6;
  }

  sub_19290CA6C(v11, v13);
  __swift_deallocate_boxed_opaque_existential_0(v24);
  return a1;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id CodableResponseDecoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CodableResponseDecoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CodableResponseDecoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192C74EDC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_192F96D5C();
  result = __swift_getEnumTagSinglePayload(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

id Concurrency.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Concurrency.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Concurrency();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Concurrency.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Concurrency();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ContiguousActionPerformer.sync(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___AMSContiguousActionPerformer_suspendableQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_19291110C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_192C75168;
  v9[3] = &block_descriptor_3_0;
  v7 = _Block_copy(v9);

  dispatch_sync(v5, v7);
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192C75200(void *a1, void *a2)
{
  if (qword_1ED6DF160 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6DF140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_192FBCD90;
  *(&v42 + 1) = type metadata accessor for ContiguousActionPerformer();
  *&v41 = a1;
  v6 = a1;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_192F967CC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_192FBCD50;
  sub_19286C588(&v41, v45);
  sub_19286CFC8(v45, v9, v11, v12 + 32);
  *(v5 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0(&v41);
  sub_19287AEE0();
  v44 = v13;
  v14._object = 0x800000019301F860;
  v14._countAndFlagsBits = 0xD000000000000034;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v15 = AMSHashIfNeeded(a2);
  if (v15)
  {
    v16 = v15;
    v17 = sub_192F967CC();
    v19 = v18;

    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v45[2] = 0;
  }

  v45[0] = v17;
  v45[1] = v19;
  v45[3] = v20;
  sub_192878268(v45, v40);
  v41 = 0u;
  v42 = 0u;
  sub_19286D180(v40, &v41);
  v43 = 3;
  v21 = v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19287AEE0();
    v21 = v38;
  }

  v22 = *(v21 + 16);
  if (v22 >= *(v21 + 24) >> 1)
  {
    sub_19287AEE0();
    v21 = v39;
  }

  *(v21 + 16) = v22 + 1;
  v23 = v21 + 40 * v22;
  v24 = v41;
  v25 = v42;
  *(v23 + 64) = v43;
  *(v23 + 32) = v24;
  *(v23 + 48) = v25;
  v44 = v21;
  sub_192907DE8(v45);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  *(v5 + 40) = v44;
  v27 = sub_192F96E3C();
  if (os_log_type_enabled(v4, v27))
  {
    v28 = MEMORY[0x1E69E6158];
    v29 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v30 = byte_1ED6DE5D8;
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *&v41 = v5;
    *(&v41 + 1) = sub_1928FA5C4;
    *&v42 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v32 = sub_192F9674C();
    v34 = v33;

    objc_autoreleasePoolPop(v29);
    v35 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_192FBCD50;
    *(v36 + 56) = v28;
    *(v36 + 64) = sub_1928FDB30();
    *(v36 + 32) = v32;
    *(v36 + 40) = v34;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v4, v27, v36);

    objc_autoreleasePoolPop(v35);
  }
}

id ContiguousActionPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_192C756D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_192C75714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192C75760(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_192BD212C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 96 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_192BC5190((v9 + 96 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static Date.utcGregorianDate(year:month:day:hour:minute:second:millisecond:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v43 = a8;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131D0, &qword_192FBF430);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14808, qword_192FC8688);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v41 - v14;
  v42 = sub_192F956DC();
  OUTLINED_FUNCTION_4_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = sub_192F95D7C();
  OUTLINED_FUNCTION_4_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_15();
  v30 = v29 - v28;
  v31 = sub_192F95DFC();
  OUTLINED_FUNCTION_4_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_15();
  v38 = v37 - v36;
  (*(v25 + 104))(v30, *MEMORY[0x1E6969868], v23);
  sub_192F95D8C();
  (*(v25 + 8))(v30, v23);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v31);
  v39 = sub_192F95E3C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v39);
  sub_192F956AC();
  (*(v33 + 16))(v15, v38, v31);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v31);
  sub_192F956BC();
  sub_192F95E1C();
  sub_192F956CC();
  sub_192F9566C();
  sub_192F9567C();
  sub_192F9564C();
  sub_192F9565C();
  sub_192F9568C();
  result = sub_192F9569C();
  if ((v50 * 1000) >> 64 == (1000 * v50) >> 63)
  {
    result = 1000000 * v50;
    if ((1000 * v50 * 1000) >> 64 == (1000000 * v50) >> 63)
    {
      sub_192F9563C();
      sub_192F95DBC();
      (*(v17 + 8))(v22, v42);
      return (*(v33 + 8))(v38, v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_192C75CE0()
{
  v0 = sub_192F9750C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192C75D34(char a1)
{
  if (a1)
  {
    return 0x7469746E45746F6ELL;
  }

  else
  {
    return 0x7078456568636163;
  }
}

uint64_t sub_192C75DA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C75CE0();
  *a1 = result;
  return result;
}

uint64_t sub_192C75DD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192C75D34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void DeveloperSilentAuthTokenCache.init(configuration:logKey:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v10 = *a1;
    v8 = AMSSetLogKeyIfNeeded();
    a2 = sub_192F967CC();
    v6 = v9;

    v5 = v10;
  }

  *a4 = 0xD000000000000035;
  *(a4 + 8) = 0x800000019301F8A0;
  *(a4 + 16) = v5;
  *(a4 + 32) = a2;
  *(a4 + 40) = v6;
}

uint64_t DeveloperSilentAuthTokenCache.clear(bundleId:account:)()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 48) = *(v3 + 16);
  OUTLINED_FUNCTION_8();
  *(v1 + 56) = v6;
  v7 = OUTLINED_FUNCTION_44_0();
  v8 = *v0;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  v9 = *(v0 + 3);
  *(v1 + 80) = *(v0 + 1);
  *(v1 + 96) = v9;
  *(v1 + 112) = v0[5];
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_192C75F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_11_25(*(v8 + 32), *(v8 + 16), *(v8 + 24), *(v8 + 40), a5, a6, a7);
  v9 = *(v8 + 64);
  if (v7)
  {

    OUTLINED_FUNCTION_40();
    v11 = 0;
  }

  else
  {
    v12 = *(v8 + 48);
    v13 = *(v8 + 56);
    v14 = (*(*(*(v8 + 40) + 32) + 40))(v12);
    (*(v13 + 8))(v9, v12);

    OUTLINED_FUNCTION_40();
    v11 = v14 & 1;
  }

  return v10(v11);
}

uint64_t sub_192C7603C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [a1 identifier];
  if (v4)
  {
    v5 = v4;
    sub_192F967BC();
  }

  v6 = sub_192F9679C();
  v7 = sub_192F9679C();
  AMSError(113, v6, v7, 0);

  return swift_willThrow();
}

uint64_t DeveloperSilentAuthTokenCache.retrieveResult(bundleId:account:)()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 64) = v6;
  *(v1 + 104) = *(v3 + 16);
  OUTLINED_FUNCTION_8();
  *(v1 + 112) = v7;
  v8 = OUTLINED_FUNCTION_44_0();
  v9 = *v0;
  *(v1 + 120) = v8;
  *(v1 + 128) = v9;
  *(v1 + 136) = *(v0 + 1);
  *(v1 + 152) = *(v0 + 3);
  *(v1 + 168) = v0[5];
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_192C76320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_11_25(*(v8 + 88), *(v8 + 72), *(v8 + 80), *(v8 + 96), a5, a6, a7);
  if (v7)
  {
LABEL_5:

    OUTLINED_FUNCTION_43();

    return v16();
  }

  *(v8 + 176) = (*(*(*(v8 + 96) + 32) + 24))(*(v8 + 104));
  *(v8 + 184) = v9;
  if (v9 >> 60 == 15)
  {
    v11 = *(v8 + 112);
    v10 = *(v8 + 120);
    v12 = *(v8 + 104);
    v13 = sub_192F9679C();
    v14 = sub_192F9679C();
    AMSError(7, v13, v14, 0);

    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    goto LABEL_5;
  }

  v15 = *(v8 + 96);
  sub_192F9543C();
  swift_allocObject();
  *(v8 + 192) = sub_192F9542C();
  *(v8 + 200) = *(v15 + 24);
  sub_192F9541C();
  v18 = *(v8 + 168);
  v19 = *(v8 + 152);
  *(v8 + 16) = *(v8 + 128);
  *(v8 + 24) = *(v8 + 136);
  *(v8 + 40) = v19;
  *(v8 + 56) = v18;
  v20 = swift_task_alloc();
  *(v8 + 208) = v20;
  *v20 = v8;
  v20[1] = sub_192C765AC;

  return DeveloperSilentAuthTokenCache.validateCache(result:)();
}

uint64_t sub_192C765AC(char a1)
{
  OUTLINED_FUNCTION_4();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  *(v5 + 216) = v1;

  if (!v1)
  {
    *(v5 + 224) = a1 & 1;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192C766C8(uint64_t a1)
{
  if (*(v1 + 224) == 1)
  {
    v2 = *(v1 + 184);
    v3 = *(v1 + 176);
    (*(*(v1 + 112) + 8))(*(v1 + 120), *(v1 + 104));

    sub_192915F68(v3, v2);
  }

  else
  {
    v5 = *(v1 + 200);
    v7 = *(v1 + 176);
    v6 = *(v1 + 184);
    v8 = *(v1 + 112);
    v13 = *(v1 + 120);
    v9 = *(v1 + 104);
    v10 = *(v1 + 64);
    sub_192C76D48();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    sub_192915F68(v7, v6);
    (*(*(v5 - 8) + 8))(v10, v5);
    (*(v8 + 8))(v13, v9);
  }

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_192C76840()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[8];

  sub_192915F68(v3, v2);
  (*(*(v1 - 8) + 8))(v7, v1);
  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t DeveloperSilentAuthTokenCache.validateCache(result:)()
{
  OUTLINED_FUNCTION_3();
  v1[12] = v2;
  v1[13] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  v4 = OUTLINED_FUNCTION_44_0();
  v5 = *v0;
  v6 = v0[1];
  v1[14] = v4;
  v1[15] = v5;
  v7 = v0[2];
  v8 = v0[3];
  v1[16] = v6;
  v1[17] = v7;
  v9 = v0[4];
  v10 = v0[5];
  v1[18] = v8;
  v1[19] = v9;
  v1[20] = v10;
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v1[6] = v9;
  v1[7] = v10;
  v11 = swift_task_alloc();
  v1[21] = v11;
  *v11 = v1;
  OUTLINED_FUNCTION_69(v11);

  return sub_192C77228();
}

uint64_t sub_192C76A10()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *(v4 + 176) = v5;
  *(v4 + 184) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192C76B14()
{
  v13 = v0;
  if (*(v0 + 176) == 0.0)
  {
    v1 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v2 = swift_allocObject();
    v3 = MEMORY[0x1E69E6158];
    *(v2 + 16) = xmmword_192FBCD50;
    *(v0 + 64) = 0xD000000000000025;
    *(v0 + 88) = v3;
    *(v0 + 72) = 0x800000019301F8E0;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_19286D180(v0 + 64, v2 + 32);
    *(v2 + 64) = 0;
    v12 = v2;
    sub_192C774E0(&v12, v1);

    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 112);
    (*(*(*(v0 + 104) + 40) + 80))(*(*(v0 + 104) + 24));
    v6 = sub_192F95CFC();
    result = __swift_getEnumTagSinglePayload(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v8 = *(v0 + 176);
    v9 = *(v0 + 112);
    sub_192F95C6C();
    v4 = fabs(v10) <= v8;
    (*(*(v6 - 8) + 8))(v9, v6);
  }

  OUTLINED_FUNCTION_40();

  return v11(v4);
}

uint64_t sub_192C76CE8()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();

  return v0(0);
}

unint64_t sub_192C76D48()
{
  result = qword_1EAE14810;
  if (!qword_1EAE14810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14810);
  }

  return result;
}

uint64_t DeveloperSilentAuthTokenCache.store(result:account:)()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v2;
  *(v1 + 24) = v5;
  *(v1 + 48) = sub_192F9545C();
  OUTLINED_FUNCTION_22();
  *(v1 + 56) = v6;
  *(v1 + 64) = OUTLINED_FUNCTION_44_0();
  *(v1 + 72) = *(v3 + 16);
  OUTLINED_FUNCTION_8();
  *(v1 + 80) = v7;
  v8 = OUTLINED_FUNCTION_44_0();
  v9 = *v0;
  *(v1 + 88) = v8;
  *(v1 + 96) = v9;
  *(v1 + 104) = *(v0 + 1);
  *(v1 + 120) = *(v0 + 3);
  *(v1 + 136) = v0[5];
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_192C76EB4()
{
  result = (*(*(*(v0 + 40) + 40) + 56))(*(*(v0 + 40) + 24), *(*(v0 + 40) + 40));
  if (v2)
  {
    sub_192C7603C(*(v0 + 32), result, v2, *(v0 + 40));

    sub_192F9549C();
    swift_allocObject();
    sub_192F9548C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14818, qword_192FC86F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_192FBCD50;
    sub_192F9544C();
    *(v0 + 16) = v3;
    sub_192C7789C(&qword_1EAE14820, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14828, &qword_192FC9580);
    sub_19287AD94(qword_1EAE14830, &qword_1EAE14828, &qword_192FC9580, MEMORY[0x1E69E6328]);
    sub_192F9719C();
    sub_192F9546C();
    v4 = sub_192F9547C();
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = v4;
    v10 = v9;
    v11 = (*(*(*(v0 + 40) + 32) + 32))();
    sub_19290CA6C(v8, v10);

    (*(v6 + 8))(v5, v7);

    OUTLINED_FUNCTION_40();

    return v12(v11 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192C77228()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1[12] = v2;
  v1[13] = v3;
  v4 = v2;
  v5 = v3;
  v1[10] = v4;
  v1[11] = v5;
  v6 = swift_task_alloc();
  v1[14] = v6;
  *v6 = v1;
  v6[1] = sub_192C772DC;

  return sub_192C787C8((v1 + 2));
}

uint64_t sub_192C772DC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C773DC()
{
  v1 = v0[12];
  v2 = v0[13];
  if (v0[3] != 1)
  {
    sub_192C78458((v0 + 2));
  }

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192C77480()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192C774E0(uint64_t *a1, uint64_t a2)
{
  v29 = *a1;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  if (qword_1ED6DE070 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_192FBCD90;
  v32[3] = a2;
  v12 = swift_allocObject();
  v32[0] = v12;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v7;
  v12[5] = v6;
  v12[6] = v9;
  v12[7] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_192FBCD50;
  sub_19286C588(v32, v31);
  __swift_project_boxed_opaque_existential_0(v31, v31[3]);
  swift_getDynamicType();

  v14 = v7;
  v15 = v6;
  v16 = v10;
  swift_bridgeObjectRetain_n();
  v30[0] = sub_192F979EC();
  v30[1] = v17;
  MEMORY[0x193B10CE0](5972026, 0xE300000000000000);
  MEMORY[0x193B10CE0](v9, v8);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v18 = MEMORY[0x1E69E6158];
  v30[3] = MEMORY[0x1E69E6158];
  __swift_destroy_boxed_opaque_existential_0(v31);
  *(v13 + 48) = 0u;
  *(v13 + 32) = 0u;
  sub_19286D180(v30, v13 + 32);
  *(v13 + 64) = 0;
  *(v11 + 32) = v13;
  __swift_destroy_boxed_opaque_existential_0(v32);
  *(v11 + 40) = v29;

  v19 = sub_192F96E5C();
  if (os_log_type_enabled(v16, v19))
  {
    v20 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v21 = byte_1ED6DE5D8;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v32[0] = v11;
    v32[1] = sub_1928FA5C4;
    v32[2] = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v23 = sub_192F9674C();
    v25 = v24;

    objc_autoreleasePoolPop(v20);
    v26 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_192FBCD50;
    *(v27 + 56) = v18;
    *(v27 + 64) = sub_1928FDB30();
    *(v27 + 32) = v23;
    *(v27 + 40) = v25;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v16, v19, v27);

    objc_autoreleasePoolPop(v26);
  }
}

uint64_t sub_192C7789C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_192C778EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x193B10CE0](95, 0xE100000000000000);
  MEMORY[0x193B10CE0](a3, a4);
}

uint64_t sub_192C77950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192C784C4;

  return DeveloperSilentAuthTokenCache.clear(bundleId:account:)();
}

uint64_t sub_192C77A10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C44;

  return DeveloperSilentAuthTokenCache.retrieveResult(bundleId:account:)();
}

uint64_t sub_192C77AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192C784C4;

  return DeveloperSilentAuthTokenCache.store(result:account:)();
}

uint64_t sub_192C77B84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192C77C28;

  return DeveloperSilentAuthTokenCache.validateCache(result:)();
}

uint64_t sub_192C77C28()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_40();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t dispatch thunk of DeveloperSilentAuthTokenCacheProtocol.clear(bundleId:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_22();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_38(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_69(v12);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DeveloperSilentAuthTokenCacheProtocol.retrieveResult(bundleId:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_22();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_38(v13);
  *v14 = v15;
  v14[1] = sub_192919C44;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DeveloperSilentAuthTokenCacheProtocol.store(result:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_38(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_69(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DeveloperSilentAuthTokenCacheProtocol.validateCache(result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_38(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_69(v8);

  return v11(a1, a2, a3);
}

uint64_t sub_192C781E8()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t sub_192C782D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for DSATCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_192C78404()
{
  result = qword_1EAE148B8;
  if (!qword_1EAE148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE148B8);
  }

  return result;
}

uint64_t sub_192C78458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE148C0, &qword_192FC8920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DeveloperSilentAuthTokenConfiguration.cacheValidPeriod()()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 80) = *v0;
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_5_29(v2);

  return sub_192C787C8(v3);
}

uint64_t sub_192C7855C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C78654()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 24) != 1)
  {
    sub_1928FC07C(v0 + 16, &qword_1EAE148C0, &qword_192FC8920);
  }

  OUTLINED_FUNCTION_7();

  return v1();
}

id DeveloperSilentAuthTokenConfiguration.init(bag:)@<X0>(id a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v5 = result;
  if (!a1)
  {
    sub_192874CD0(0, &qword_1EAE12350, off_1E73B0A30);
    v6 = sub_19294D4D0(0x73746E756F636341, 0xE800000000000000, 49, 0xE100000000000000);
    v7 = type metadata accessor for SendableBag();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR___AMSSendableBag_wrappedBag] = v6;
    v9.receiver = v8;
    v9.super_class = v7;
    result = objc_msgSendSuper2(&v9, sel_init);
    a1 = result;
  }

  *a2 = v5;
  a2[1] = a1;
  return result;
}

uint64_t sub_192C787C8(uint64_t a1)
{
  *(v2 + 504) = a1;
  *(v2 + 512) = *v1;
  OUTLINED_FUNCTION_135();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192C787FC()
{
  v1 = *(v0 + 512);
  *(v0 + 432) = 0xD000000000000018;
  *(v0 + 440) = 0x8000000193017990;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v2)
  {
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    v5 = v0 + 336;
LABEL_12:
    sub_1928FC07C(v5, &unk_1EAE131B0, &qword_192FBD860);
    goto LABEL_13;
  }

  v3 = *(v0 + 512);
  sub_192F9715C();
  swift_unknownObjectRelease();
  sub_1928FC07C(v0 + 336, &unk_1EAE131B0, &qword_192FBD860);
  *(v0 + 480) = 0xD000000000000018;
  *(v0 + 488) = 0x8000000193017990;
  v4 = [v3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  *(v0 + 400) = v15;
  *(v0 + 416) = v16;
  if (!*(v0 + 424))
  {
    v5 = v0 + 400;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 288);
    *(v0 + 16) = *(v0 + 272);
    *(v0 + 32) = v6;
    *(v0 + 48) = *(v0 + 304);
    *(v0 + 57) = *(v0 + 313);
    v7 = *(v0 + 504);
    v8 = *(v0 + 16);
    v9 = *(v0 + 32);
    v10 = *(v0 + 48);
    *(v7 + 41) = *(v0 + 57);
    v7[1] = v9;
    v7[2] = v10;
    *v7 = v8;
    OUTLINED_FUNCTION_7();

    return v11();
  }

LABEL_13:
  v13 = sub_192C78E44();
  *(v0 + 528) = v13;
  v14 = swift_task_alloc();
  *(v0 + 536) = v14;
  *v14 = v0;
  v14[1] = sub_192C78A7C;

  return SendableBag.codableDictionary(for:)(v13);
}

uint64_t sub_192C78A7C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *(v6 + 544) = v5;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C78B80()
{
  v1 = *(v0 + 544);
  *(v0 + 448) = 0xD000000000000018;
  *(v0 + 456) = 0x8000000193017990;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *(v0 + 368) = v17;
  *(v0 + 384) = v18;
  if (*(v0 + 392))
  {
    sub_192874CD0(0, &qword_1ED6DEE70, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 496);
      sub_192C65B64();
      v8 = *(v0 + 544);
      v9 = *(v0 + 512);
      *(v0 + 80) = v17;
      *(v0 + 96) = v18;
      *(v0 + 112) = *v19;
      *(v0 + 121) = *&v19[9];
      *(v0 + 144) = v17;
      *(v0 + 160) = v18;
      *(v0 + 176) = *v19;
      *(v0 + 185) = *&v19[9];
      sub_192C7A42C(v0 + 80, v0 + 208);
      v10 = sub_192F977AC();
      *(v0 + 464) = 0xD000000000000018;
      *(v0 + 472) = 0x8000000193017990;
      [v9 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v11 = *(v0 + 96);
      *(v0 + 16) = *(v0 + 80);
      *(v0 + 32) = v11;
      *(v0 + 48) = *(v0 + 112);
      *(v0 + 57) = *(v0 + 121);
      v12 = *(v0 + 504);
      v13 = *(v0 + 16);
      v14 = *(v0 + 32);
      v15 = *(v0 + 48);
      *(v12 + 41) = *(v0 + 57);
      v12[1] = v14;
      v12[2] = v15;
      *v12 = v13;
      OUTLINED_FUNCTION_7();
      goto LABEL_9;
    }
  }

  else
  {
    sub_1928FC07C(v0 + 368, &unk_1EAE131B0, &qword_192FBD860);
  }

  v4 = *(v0 + 544);
  v5 = sub_192F9679C();
  v6 = sub_192F9679C();
  AMSError(7, v5, v6, 0);

  swift_willThrow();
  v16 = *(v0 + 8);
LABEL_9:

  return v16();
}

uint64_t sub_192C78E44()
{
  sub_1928F6488();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >= *(v0 + 24) >> 1)
  {
    sub_1928F6488();
    v1 = v5;
  }

  *(v1 + 16) = v2 + 1;
  v3 = v1 + 24 * v2;
  *(v3 + 32) = 0xD000000000000018;
  *(v3 + 40) = 0x8000000193017990;
  *(v3 + 48) = 6;
  return v1;
}

uint64_t DeveloperSilentAuthTokenConfiguration.consentEndpointURL()()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_32(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_31(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_29(v2);

  return sub_192C787C8(v4);
}

uint64_t sub_192C78F60()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C79058()
{
  if (*(v0 + 24) == 1 || (*(v0 + 80) = *(v0 + 48), sub_192C7A238(v0 + 80, v0 + 112), sub_1928FC07C(v0 + 16, &qword_1EAE148C0, &qword_192FC8920), !*(v0 + 88)))
  {
    v2 = sub_192F9679C();
    v3 = sub_192F9679C();
    OUTLINED_FUNCTION_4_40(v3);

    swift_willThrow();
    OUTLINED_FUNCTION_7_27();
  }

  else
  {
    sub_192F95A3C();
    sub_1928FC07C(v0 + 80, &qword_1EAE148C8, &qword_192FC8930);
    OUTLINED_FUNCTION_7();
  }

  return v1();
}

uint64_t DeveloperSilentAuthTokenConfiguration.getEndpointURL()()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_32(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_31(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_29(v2);

  return sub_192C787C8(v4);
}

uint64_t sub_192C7920C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C79304()
{
  if (*(v0 + 24) == 1 || (*(v0 + 80) = *(v0 + 32), sub_192C7A238(v0 + 80, v0 + 112), sub_1928FC07C(v0 + 16, &qword_1EAE148C0, &qword_192FC8920), !*(v0 + 88)))
  {
    v2 = sub_192F9679C();
    v3 = sub_192F9679C();
    OUTLINED_FUNCTION_4_40(v3);

    swift_willThrow();
    OUTLINED_FUNCTION_7_27();
  }

  else
  {
    sub_192F95A3C();
    sub_1928FC07C(v0 + 80, &qword_1EAE148C8, &qword_192FC8930);
    OUTLINED_FUNCTION_7();
  }

  return v1();
}

uint64_t DeveloperSilentAuthTokenConfiguration.updateEndpointURL()()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_32(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_31(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_29(v2);

  return sub_192C787C8(v4);
}

uint64_t sub_192C794D4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C795CC()
{
  v1 = v0[3];
  if (v1 == 1 || (v0[10] = v0[2], v0[11] = v1, sub_192C7A238((v0 + 10), (v0 + 14)), sub_1928FC07C((v0 + 2), &qword_1EAE148C0, &qword_192FC8920), !v0[11]))
  {
    v3 = sub_192F9679C();
    v4 = sub_192F9679C();
    OUTLINED_FUNCTION_4_40(v4);

    swift_willThrow();
    OUTLINED_FUNCTION_7_27();
  }

  else
  {
    sub_192F95A3C();
    sub_1928FC07C((v0 + 10), &qword_1EAE148C8, &qword_192FC8930);
    OUTLINED_FUNCTION_7();
  }

  return v2();
}

uint64_t sub_192C796FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE148D8, &qword_192FC8A90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C7A3D8();
  sub_192F9797C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  v11 = sub_192F975AC();
  v24 = v12;
  v25 = v11;
  v28 = 1;
  v13 = sub_192F975AC();
  v22 = v14;
  v23 = v13;
  v27 = 2;
  v15 = sub_192F9755C();
  v17 = v16;
  v26 = 3;
  sub_192F975CC();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  v30 = 0;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v20 = v24;
  *a2 = v25;
  *(a2 + 8) = v20;
  v21 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v21;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_192C79950()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v2 = byte_1F06F04F8[v0++ + 32];
    v3 = 0xEB000000006E656BLL;
    v4 = 0x6F54657461647075;
    switch(v2)
    {
      case 1:
        v3 = 0xE800000000000000;
        v4 = 0x6E656B6F54746567;
        goto LABEL_5;
      case 2:
        v4 = 0x6F43657461647075;
        v3 = 0xED0000746E65736ELL;
        goto LABEL_5;
      case 3:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1928F6488();
          v1 = v11;
        }

        v5 = *(v1 + 16);
        v6 = v5 + 1;
        if (v5 >= *(v1 + 24) >> 1)
        {
          sub_1928F6488();
          v1 = v12;
        }

        v7 = 2;
        v4 = 0x72655064696C6176;
        v3 = 0xEB00000000646F69;
        goto LABEL_15;
      default:
LABEL_5:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1928F6488();
          v1 = v9;
        }

        v5 = *(v1 + 16);
        v6 = v5 + 1;
        if (v5 >= *(v1 + 24) >> 1)
        {
          sub_1928F6488();
          v1 = v10;
        }

        v7 = 4;
LABEL_15:
        *(v1 + 16) = v6;
        v8 = v1 + 24 * v5;
        *(v8 + 32) = v4;
        *(v8 + 40) = v3;
        *(v8 + 48) = v7;
        if (v0 != 4)
        {
          continue;
        }

        return v1;
    }
  }
}

uint64_t sub_192C79B38(double *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_192F9775C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 3);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(a1 + 2) == *(a2 + 16) && v7 == v8;
    if (!v9 && (sub_192F9775C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(a1 + 5);
  v11 = *(a2 + 40);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 4) == *(a2 + 32) && v10 == v11;
  if (!v12 && (sub_192F9775C() & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v13 = *(a2 + 56);
  if (a1[7])
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a1[6] != *(a2 + 48))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_192C79C34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE148E8, &unk_192FC8A98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C7A3D8();
  sub_192F9799C();
  v9[15] = 0;
  sub_192F9764C();
  if (!v1)
  {
    v9[14] = 1;
    sub_192F9764C();
    v9[13] = 2;
    sub_192F9764C();
    v9[12] = 3;
    sub_192F9766C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_192C79DEC(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_192F978BC();
    sub_192F968BC();
  }

  else
  {
    sub_192F978BC();
  }

  if (*(v1 + 24))
  {
    sub_192F978BC();
    sub_192F968BC();
  }

  else
  {
    sub_192F978BC();
  }

  if (*(v1 + 40))
  {
    sub_192F978BC();
    sub_192F968BC();
  }

  else
  {
    sub_192F978BC();
  }

  if (*(v1 + 56) == 1)
  {
    return sub_192F978BC();
  }

  v3 = *(v1 + 48);
  sub_192F978BC();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x193B11CB0](v4);
}

uint64_t sub_192C79ED8()
{
  sub_192F9789C();
  sub_192C79DEC(v1);
  return sub_192F978DC();
}

unint64_t sub_192C79F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19295CB8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_192C79F6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19295CBD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_192C79FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19295CB8C(a1, a2);
  *a3 = result;
  return result;
}

unsigned __int8 *sub_192C79FC8@<X0>(unsigned __int8 **a1@<X8>)
{
  result = sub_192C79B2C();
  *a1 = result;
  return result;
}

uint64_t sub_192C79FF4(uint64_t a1)
{
  v2 = sub_192C7A3D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192C7A030(uint64_t a1)
{
  v2 = sub_192C7A3D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_192C7A06C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_192C796FC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_192C7A184(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7[0] = v1[2];
  *(v7 + 9) = *(v1 + 41);
  sub_192F9789C();
  sub_192C79DEC(v4);
  return sub_192F978DC();
}

uint64_t sub_192C7A1DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_192C79B38(v5, v7) & 1;
}

uint64_t sub_192C7A238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE148C8, &qword_192FC8930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192C7A2B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_192C7A30C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_192C7A384()
{
  result = qword_1EAE148D0;
  if (!qword_1EAE148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE148D0);
  }

  return result;
}

unint64_t sub_192C7A3D8()
{
  result = qword_1EAE148E0;
  if (!qword_1EAE148E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE148E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EndpointModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_192C7A544()
{
  result = qword_1EAE148F0;
  if (!qword_1EAE148F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE148F8, qword_192FC8B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE148F0);
  }

  return result;
}

unint64_t sub_192C7A5AC()
{
  result = qword_1EAE14900;
  if (!qword_1EAE14900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14900);
  }

  return result;
}

unint64_t sub_192C7A604()
{
  result = qword_1EAE14908;
  if (!qword_1EAE14908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14908);
  }

  return result;
}

unint64_t sub_192C7A65C()
{
  result = qword_1EAE14910;
  if (!qword_1EAE14910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14910);
  }

  return result;
}

void sub_192C7A6B4(char a1)
{
  switch(a1)
  {
    case 3:
    case 5:
      OUTLINED_FUNCTION_31_0();
      break;
    default:
      return;
  }
}

uint64_t sub_192C7A7D0()
{
  v0 = sub_192F9750C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192C7A824(char a1)
{
  if (a1)
  {
    return 0x656E696C636564;
  }

  else
  {
    return 0x746E65736E6F63;
  }
}

uint64_t sub_192C7A854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_192F9777C();
}

uint64_t sub_192C7A8C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_192C7A934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_192C7A9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_192C7AA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192C7A824(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192C7AA64(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DeveloperSilentAuthTokenManager.RequestKey(0, a2, a3, a4);
  swift_getWitnessTable();
  return sub_192F9683C();
}

unint64_t sub_192C7AAC4()
{
  v0 = sub_192F9750C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

BOOL sub_192C7AB10()
{
  v0 = sub_192F9750C();

  return v0 != 0;
}

uint64_t sub_192C7AB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_192F9777C();
}

uint64_t sub_192C7ABF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_192C7AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_192C7ACCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_192C7AD54@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4]);
  *a4 = result;
  return result;
}

uint64_t sub_192C7AD98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19295CCD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192C7ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_192F9777C();
}

uint64_t sub_192C7AE50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_192C7AEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_192C7AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_192C7AF9C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_192C7AB10();
  *a1 = result;
  return result;
}

uint64_t sub_192C7AFDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192C7AB58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 DeveloperSilentAuthTokenManager.init(bundleId:account:mediaType:bag:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a9@<X8>)
{
  v15 = a3;
  v66 = a1;
  v63 = sub_192C7B3D4(a1, a2);
  v17 = v16;
  v18 = [objc_opt_self() currentProcess];
  v19 = v18;
  v67 = a4;
  v64 = v18;
  v65 = a3;
  if (a4)
  {
    [v18 setAccountMediaType_];
    if (!a5)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    v20 = v15;
    if ([v20 ams_isSandboxAccount])
    {
      [v19 setAccountMediaType_];
    }

    if (!a5)
    {
LABEL_8:
      if (a3)
      {
        sub_192874CD0(0, &qword_1EAE12350, off_1E73B0A30);
        v62 = a5;
        v21 = v15;
        v22 = v19;
        v23 = OUTLINED_FUNCTION_72_4();
        v27 = sub_192C7B494(v23, v24, v25, v26, v19, v21);
        v28 = type metadata accessor for SendableBag();
        v29 = objc_allocWithZone(v28);
        *&v29[OBJC_IVAR___AMSSendableBag_wrappedBag] = v27;
        v68.receiver = v29;
        v68.super_class = v28;
        v30 = v27;
        v31 = objc_msgSendSuper2(&v68, sel_init);
        v32 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];

        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_11:

    v33 = 0;
    goto LABEL_13;
  }

  if (a5)
  {
    goto LABEL_11;
  }

LABEL_12:
  v33 = 1;
LABEL_13:
  v34 = objc_allocWithZone(MEMORY[0x1E695DF90]);
  v35 = a5;
  v32 = [v34 init];
  v62 = v35;
  if (v33)
  {
    sub_192874CD0(0, &qword_1EAE12350, off_1E73B0A30);
    v36 = OUTLINED_FUNCTION_72_4();
    v40 = sub_19294D4D0(v36, v37, v38, v39);
    v41 = type metadata accessor for SendableBag();
    v42 = objc_allocWithZone(v41);
    *&v42[OBJC_IVAR___AMSSendableBag_wrappedBag] = v40;
    v75.receiver = v42;
    v75.super_class = v41;
    v31 = objc_msgSendSuper2(&v75, sel_init);
  }

  else
  {
    v31 = v35;
  }

LABEL_16:
  v43 = 0xE000000000000000;
  if (v17)
  {
    v43 = v17;
  }

  v61 = v43;
  if (v17)
  {
    v44 = v63;
  }

  else
  {
    v44 = 0;
  }

  v45 = type metadata accessor for DeveloperSilentAuthTokenDelegate();
  v46 = objc_allocWithZone(v45);
  *&v46[OBJC_IVAR____TtC18AppleMediaServicesP33_68239C40601534D7947471707625281632DeveloperSilentAuthTokenDelegate_bag] = v31;
  v74.receiver = v46;
  v74.super_class = v45;
  v47 = v31;
  v48 = objc_msgSendSuper2(&v74, sel_init);
  v49 = AMSSetLogKeyIfNeeded();
  v50 = sub_192F967CC();
  v52 = v51;

  *&v69 = v32;
  *(&v69 + 1) = v47;
  sub_192874CD0(0, &qword_1EAE14920, off_1E73B0DC0);
  type metadata accessor for DeveloperSilentAuthTokenResult(0);
  OUTLINED_FUNCTION_1_42();
  sub_192C872E0(v53, v54);

  v55 = v32;
  v56 = v47;
  DeveloperSilentAuthTokenCache.init(configuration:logKey:)(&v69, v50, v52, &v70);

  v57 = v70;
  v59 = v71;
  result = v72;
  v60 = v73;
  *a9 = v65;
  *(a9 + 8) = v44;
  *(a9 + 16) = v61;
  *(a9 + 24) = v66;
  *(a9 + 32) = a2;
  *(a9 + 40) = v50;
  *(a9 + 48) = v52;
  *(a9 + 56) = v67;
  *(a9 + 64) = v55;
  *(a9 + 72) = v56;
  *(a9 + 80) = v48;
  *(a9 + 88) = v57;
  *(a9 + 96) = v59;
  *(a9 + 112) = result;
  *(a9 + 128) = v60;
  return result;
}

uint64_t sub_192C7B3D4(uint64_t a1, uint64_t a2)
{
  sub_192874CD0(0, qword_1EAE14AB0, 0x1E6963620);

  v4 = sub_192C907E4(a1, a2, 1);
  v5 = [v4 localizedName];
  v6 = sub_192F967CC();

  return v6;
}

id sub_192C7B494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = sub_192F9679C();

  v9 = sub_192F9679C();

  v10 = [swift_getObjCClassFromMetadata() bagForProfile:v8 profileVersion:v9 processInfo:a5 account:a6];

  return v10;
}

uint64_t DeveloperSilentAuthTokenManager.update(withToken:)()
{
  OUTLINED_FUNCTION_5();
  v1[36] = v2;
  v1[37] = v0;
  OUTLINED_FUNCTION_86_2();
  v3 = swift_task_alloc();
  v1[38] = v3;
  *v3 = v1;
  v3[1] = sub_192C7B5FC;
  OUTLINED_FUNCTION_53_0();

  return sub_192C7B89C(v4, v5, v6);
}

uint64_t sub_192C7B5FC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C7B89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 592) = v3;
  *(v4 + 584) = a3;
  *(v4 + 576) = a2;
  *(v4 + 568) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  *(v4 + 600) = swift_task_alloc();
  v5 = sub_192F95A8C();
  *(v4 + 608) = v5;
  *(v4 + 616) = *(v5 - 8);
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 544) = *v3;
  v6 = *(v3 + 24);
  *(v4 + 560) = *(v3 + 16);
  *(v4 + 632) = v6;
  *(v4 + 640) = *(v3 + 32);
  memcpy((v4 + 416), (v3 + 40), 0x60uLL);

  return MEMORY[0x1EEE6DFA0](sub_192C7B9CC, 0, 0);
}

uint64_t sub_192C7BB18()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 656) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C7BC10()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_19292E1F0(v2, &unk_1EAE144B0, &unk_192FC78B0);
    v3 = sub_192F9679C();
    v4 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    v8 = AMSError(v5, v6, v7, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();

    return v9();
  }

  else
  {
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);
    v33 = *(v0 + 568);
    (*(*(v0 + 616) + 32))(*(v0 + 624), v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200, &unk_192FC22D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_192FBCD90;
    v16 = *(v13 + 32);
    OUTLINED_FUNCTION_54_0();
    *(inited + 32) = sub_192C7AA64(v17, v18, v19, v16);
    *(inited + 40) = v20;
    v21 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v12;
    *(inited + 56) = v11;

    OUTLINED_FUNCTION_54_0();
    *(inited + 80) = sub_192C7AA64(v22, v23, v24, v16);
    *(inited + 88) = v25;
    *(inited + 120) = v21;
    v26 = v33;
    if (!v14)
    {
      v26 = 0;
    }

    v27 = 0xE000000000000000;
    if (v14)
    {
      v27 = v14;
    }

    *(inited + 96) = v26;
    *(inited + 104) = v27;

    *(v0 + 664) = sub_192F966CC();
    *(v0 + 152) = *(v0 + 544);
    *(v0 + 168) = *(v0 + 560);
    *(v0 + 176) = v12;
    *(v0 + 184) = v11;
    memcpy((v0 + 192), (v0 + 416), 0x60uLL);
    v28 = swift_task_alloc();
    *(v0 + 672) = v28;
    *v28 = v0;
    v28[1] = sub_192C7BEE4;
    OUTLINED_FUNCTION_51(*(v0 + 624));
    OUTLINED_FUNCTION_111_2();

    return sub_192C83930(v29, v30, v31, v32);
  }
}

uint64_t sub_192C7BEE4()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 680) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C7BFF8()
{
  OUTLINED_FUNCTION_3();
  (*(v0[77] + 8))(v0[78], v0[76]);

  OUTLINED_FUNCTION_7();

  return v1();
}

uint64_t sub_192C7C07C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192C7C0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_67_6();
  a35 = v38;
  a36 = v39;
  OUTLINED_FUNCTION_44_8();
  a34 = v36;
  v40 = *(v36 + 640);
  v41 = *(v36 + 632);

  v70 = *(v36 + 544);
  v71 = *(v36 + 560);
  v72 = v41;
  v73 = v40;
  memcpy(&a14, (v36 + 416), 0x60uLL);
  v42 = OUTLINED_FUNCTION_28_17();
  v43 = sub_192C85724(v42);
  v44 = *(v36 + 680);
  if (v43)
  {
    v45 = *(v36 + 624);
    v46 = *(v36 + 616);
    v47 = *(v36 + 608);
    v48 = sub_192F9679C();
    v49 = sub_192F9679C();
    v50 = sub_192F958CC();
    OUTLINED_FUNCTION_103_3(v50);

    swift_willThrow();
    (*(v46 + 8))(v45, v47);
  }

  else
  {
    OUTLINED_FUNCTION_121_1(v36 + 544);
    v73 = v51;
    memcpy(&a14, (v36 + 416), 0x60uLL);
    v52 = OUTLINED_FUNCTION_28_17();
    v53 = sub_192C85A18(v52);
    v54 = *(v36 + 680);
    v55 = *(v36 + 624);
    v56 = *(v36 + 616);
    v57 = *(v36 + 608);
    if (v53)
    {
      v58 = sub_192F9679C();
      v59 = sub_192F9679C();
      v60 = sub_192F958CC();
      OUTLINED_FUNCTION_103_3(v60);

      swift_willThrow();
      (*(v56 + 8))(v55, v57);
    }

    else
    {
      swift_willThrow();
      (*(v56 + 8))(v55, v57);
    }
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_58_8();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, v70, *(&v70 + 1), v71, v72, v73, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t DeveloperSilentAuthTokenManager.updateConsent(withStatus:)()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v5 = v4;
  v1[36] = v2;
  v1[37] = v0;
  OUTLINED_FUNCTION_86_2();
  v6 = swift_task_alloc();
  v1[38] = v6;
  *v6 = v1;
  v6[1] = sub_192C7C3E4;

  return sub_192C7C684(v5, v3);
}

uint64_t sub_192C7C3E4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C7C684(char a1, uint64_t a2)
{
  *(v3 + 680) = v2;
  *(v3 + 672) = a2;
  *(v3 + 800) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  *(v3 + 688) = swift_task_alloc();
  v4 = sub_192F95A8C();
  *(v3 + 696) = v4;
  *(v3 + 704) = *(v4 - 8);
  *(v3 + 712) = swift_task_alloc();
  *(v3 + 616) = *v2;
  v5 = *(v2 + 24);
  *(v3 + 632) = *(v2 + 16);
  *(v3 + 720) = v5;
  *(v3 + 728) = *(v2 + 32);
  memcpy((v3 + 424), (v2 + 40), 0x60uLL);

  return MEMORY[0x1EEE6DFA0](sub_192C7C7B4, 0, 0);
}

uint64_t sub_192C7C904()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C7C9FC()
{
  v50 = v0;
  v1 = *(v0 + 688);
  OUTLINED_FUNCTION_111_2();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    sub_19292E1F0(v1, &unk_1EAE144B0, &unk_192FC78B0);
    v5 = sub_192F9679C();
    v6 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    AMSError(v7, v8, v9, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_88_3();

    return v10();
  }

  else
  {
    v13 = (v0 + 616);
    v14 = *(v0 + 800);
    OUTLINED_FUNCTION_65_0();
    v15();
    if (v14 == 1)
    {
      v16 = *(v0 + 728);
      v17 = *(v0 + 720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200, &unk_192FC22D0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_192FBCD90;
      OUTLINED_FUNCTION_63_5();
      *(v18 + 32) = sub_192C7AA64(v19, v20, v21, v22);
      *(v18 + 40) = v23;
      *(v18 + 72) = MEMORY[0x1E69E6158];
      *(v18 + 48) = v17;
      *(v18 + 56) = v16;

      OUTLINED_FUNCTION_63_5();
      *(v18 + 80) = sub_192C7AA64(v24, v25, v26, v27);
      *(v18 + 88) = v28;
      *(v18 + 120) = MEMORY[0x1E69E6370];
      *(v18 + 96) = 1;
      *(v0 + 760) = sub_192F966CC();
      *(v0 + 288) = *v13;
      *(v0 + 304) = *(v0 + 632);
      *(v0 + 312) = v17;
      *(v0 + 320) = v16;
      OUTLINED_FUNCTION_131_1((v0 + 328));
      v29 = swift_task_alloc();
      *(v0 + 768) = v29;
      *v29 = v0;
      v29[1] = sub_192C7CDE8;
      OUTLINED_FUNCTION_51(*(v0 + 712));
      OUTLINED_FUNCTION_111_2();
      OUTLINED_FUNCTION_88_3();

      return sub_192C83930(v30, v31, v32, v33);
    }

    else
    {
      v35 = *(v0 + 736);
      v36 = *(v0 + 728);
      v37 = *(v0 + 720);
      OUTLINED_FUNCTION_131_1(&v48);
      v38 = OUTLINED_FUNCTION_90(v35);
      *(v38 + 16) = xmmword_192FBCD50;
      *(v0 + 576) = MEMORY[0x1E69E6158];
      *(v0 + 552) = 0xD000000000000013;
      *(v0 + 560) = 0x8000000193020450;
      OUTLINED_FUNCTION_12_1(v38);
      sub_19286D180(v0 + 552, v39);
      *(v38 + 64) = 0;
      v49 = v38;
      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_130_1(&v49, v40, v41, v42, sub_1928FA5C4);

      *(v0 + 152) = *v13;
      *(v0 + 168) = *(v0 + 632);
      *(v0 + 176) = v37;
      *(v0 + 184) = v36;
      OUTLINED_FUNCTION_131_1((v0 + 192));
      v43 = swift_task_alloc();
      *(v0 + 784) = v43;
      *v43 = v0;
      v43[1] = sub_192C7CF78;
      OUTLINED_FUNCTION_88_3();

      return sub_192C7B89C(v44, v45, v46);
    }
  }
}

uint64_t sub_192C7CDE8()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 776) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C7CF04()
{
  OUTLINED_FUNCTION_3();
  v0 = OUTLINED_FUNCTION_119_0();
  v1(v0);

  OUTLINED_FUNCTION_7();

  return v2();
}

uint64_t sub_192C7CF78()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 792) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C7D070()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192C7D0D8()
{
  OUTLINED_FUNCTION_3();
  v0 = OUTLINED_FUNCTION_119_0();
  v1(v0);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192C7D150()
{
  v19 = v0;
  v1 = v0[99];
  v0[80] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    v3 = v0[81];
    v0[82] = v3;
    sub_192C872E0(&qword_1EAE120F0, type metadata accessor for AMSError);
    sub_192F9588C();
    if (v0[83] == 2)
    {
      v4 = v0[99];
      v5 = v0[92];
      v6 = v0[84];
      OUTLINED_FUNCTION_121_1((v0 + 77));
      OUTLINED_FUNCTION_131_1(&v17);
      v7 = OUTLINED_FUNCTION_90(v5);
      *(v7 + 16) = xmmword_192FBCD50;
      v0[76] = MEMORY[0x1E69E6158];
      v0[73] = 0xD000000000000034;
      v0[74] = 0x8000000193020470;
      OUTLINED_FUNCTION_12_1(v7);
      sub_19286D180((v0 + 73), v8);
      *(v7 + 64) = 0;
      v18 = v7;
      OUTLINED_FUNCTION_0_35();
      sub_192C83188(&v18, v6, v9, v10, sub_1928FA5C4);

      v11 = OUTLINED_FUNCTION_102();
      v12(v11);

      OUTLINED_FUNCTION_7();
      goto LABEL_6;
    }
  }

  swift_willThrow();
  v14 = OUTLINED_FUNCTION_48();
  v15(v14);

  OUTLINED_FUNCTION_43();
LABEL_6:

  return v13();
}

uint64_t DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)()
{
  OUTLINED_FUNCTION_5();
  v1[36] = v2;
  v1[37] = v0;
  OUTLINED_FUNCTION_86_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[38] = v3;
  *v3 = v4;
  v3[1] = sub_192C7D464;
  OUTLINED_FUNCTION_53_0();

  return sub_192C7D704(v5, v6, v7);
}

uint64_t sub_192C7D464()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 312) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C7D704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1368) = v3;
  *(v4 + 1360) = a3;
  *(v4 + 1352) = a2;
  *(v4 + 1344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  *(v4 + 1376) = swift_task_alloc();
  v5 = sub_192F95A8C();
  *(v4 + 1384) = v5;
  *(v4 + 1392) = *(v5 - 8);
  *(v4 + 1400) = swift_task_alloc();
  *(v4 + 1408) = type metadata accessor for DeveloperSilentAuthTokenResult(0);
  *(v4 + 1416) = swift_task_alloc();
  *(v4 + 1424) = swift_task_alloc();
  *(v4 + 1432) = swift_task_alloc();
  *(v4 + 1304) = *v3;
  *(v4 + 1320) = *(v3 + 16);
  *(v4 + 1440) = *(v3 + 24);
  v6 = *(v3 + 56);
  *(v4 + 832) = *(v3 + 40);
  *(v4 + 848) = v6;
  *(v4 + 864) = *(v3 + 72);
  *(v4 + 1456) = *(v3 + 88);
  *(v4 + 1464) = *(v3 + 96);
  v7 = *(v3 + 120);
  *(v4 + 1480) = *(v3 + 112);
  *(v4 + 1488) = v7;
  *(v4 + 1496) = *(v3 + 128);

  return MEMORY[0x1EEE6DFA0](sub_192C7D8B0, 0, 0);
}

uint64_t sub_192C7D8B0()
{
  v23 = v0;
  v20 = *(v0 + 1488);
  v21 = *(v0 + 1496);
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1456);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1368);
  v19 = *(v0 + 1360);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  *(v0 + 1504) = v8;
  v9 = OUTLINED_FUNCTION_90(v8);
  *(v9 + 16) = xmmword_192FBCD50;
  *(v0 + 1040) = MEMORY[0x1E69E6158];
  *(v0 + 1016) = 0xD000000000000024;
  *(v0 + 1024) = 0x8000000193020120;
  OUTLINED_FUNCTION_12_1(v9);
  sub_19286D180(v0 + 1016, v10);
  *(v9 + 64) = 0;
  v22 = v9;
  OUTLINED_FUNCTION_0_35();
  sub_192C83188(&v22, v19, v11, v12, sub_1928FA5C4);

  v13 = *(v7 + 16);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v13;
  *(v0 + 40) = v6;
  *(v0 + 48) = v5;
  v14 = *(v7 + 40);
  v15 = *(v7 + 56);
  *(v0 + 88) = *(v7 + 72);
  *(v0 + 72) = v15;
  *(v0 + 56) = v14;
  *(v0 + 104) = v4;
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;
  *(v0 + 136) = v20;
  *(v0 + 144) = v21;
  v16 = swift_task_alloc();
  *(v0 + 1512) = v16;
  *v16 = v0;
  v16[1] = sub_192C7DAAC;
  v17 = OUTLINED_FUNCTION_51(*(v0 + 1360));

  return sub_192C8207C(v17);
}

uint64_t sub_192C7DAAC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  *(v3 + 1520) = v6;
  *(v3 + 1528) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    if (*(v3 + 1352))
    {
      v10 = *(v3 + 1496);
      v11 = *(v3 + 1480);
      v12 = *(v3 + 1456);
      v13 = *(v3 + 1448);
      v14 = *(v3 + 1440);
      v15 = *(v3 + 1320);
      *(v3 + 152) = *(v3 + 1304);
      *(v3 + 168) = v15;
      *(v3 + 176) = v14;
      *(v3 + 184) = v13;
      v16 = *(v3 + 848);
      *(v3 + 192) = *(v3 + 832);
      *(v3 + 208) = v16;
      *(v3 + 224) = *(v3 + 864);
      *(v3 + 240) = v12;
      *(v3 + 248) = *(v3 + 1464);
      *(v3 + 264) = v11;
      *(v3 + 280) = v10;
      v17 = swift_task_alloc();
      *(v3 + 1576) = v17;
      *v17 = v5;
      OUTLINED_FUNCTION_42_10(v17);
    }

    else
    {
      v18 = *(v3 + 1496);
      v19 = *(v3 + 1488);
      v20 = *(v3 + 1464);
      v21 = *(v3 + 1456);
      v22 = *(v3 + 1448);
      v23 = *(v3 + 1440);
      v24 = *(v3 + 1368);
      v25 = *(v3 + 1472);
      v26 = *(v24 + 16);
      *(v3 + 696) = *v24;
      *(v3 + 712) = v26;
      *(v3 + 720) = v23;
      *(v3 + 728) = v22;
      v27 = *(v24 + 40);
      v28 = *(v24 + 72);
      *(v3 + 752) = *(v24 + 56);
      *(v3 + 768) = v28;
      *(v3 + 736) = v27;
      *(v3 + 784) = v21;
      *(v3 + 792) = v20;
      *(v3 + 800) = v25;
      *(v3 + 816) = v19;
      *(v3 + 824) = v18;
      v29 = swift_task_alloc();
      *(v3 + 1536) = v29;
      *v29 = v5;
      v29[1] = sub_192C7DD04;
    }

    OUTLINED_FUNCTION_51(*(v3 + 1360));

    return sub_192C834D0();
  }
}

uint64_t sub_192C7DD04()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1544) = v0;

  if (!v0)
  {
    *(v5 + 1552) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C7DE0C()
{
  OUTLINED_FUNCTION_5();
  if (*(v0 + 1552) > 0.0 && (*(v0 + 880) = OUTLINED_FUNCTION_117_1(), *(v0 + 888) = v1, *(v0 + 896) = *(v0 + 1472), *(v0 + 912) = v2, *(v0 + 920) = v3, v4 = sub_192F9679C(), v5 = [objc_opt_self() processIsEntitledToUse_], v4, v5))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v0 + 1560) = v6;
    *v6 = v7;
    v6[1] = sub_192C7DFCC;
    v8 = *(v0 + 1520);
    v9 = *(v0 + 1448);
    v10 = *(v0 + 1440);
    v11 = *(v0 + 1432);

    return sub_192C8843C(v11, v10, v9, v8);
  }

  else
  {
    v13 = *(v0 + 1496);
    v14 = *(v0 + 1480);
    v15 = *(v0 + 1456);
    v16 = *(v0 + 1448);
    v17 = *(v0 + 1440);
    v18 = *(v0 + 1320);
    *(v0 + 152) = *(v0 + 1304);
    *(v0 + 168) = v18;
    *(v0 + 176) = v17;
    *(v0 + 184) = v16;
    v19 = *(v0 + 848);
    *(v0 + 192) = *(v0 + 832);
    *(v0 + 208) = v19;
    *(v0 + 224) = *(v0 + 864);
    *(v0 + 240) = v15;
    *(v0 + 248) = *(v0 + 1464);
    *(v0 + 264) = v14;
    *(v0 + 280) = v13;
    v20 = swift_task_alloc();
    *(v0 + 1576) = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_42_10(v20);
    OUTLINED_FUNCTION_51(*(v0 + 1360));

    return sub_192C834D0();
  }
}

uint64_t sub_192C7DFCC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1568) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C7E0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_67_6();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_44_8();
  a34 = v36;
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_15_18();
  v39 = *(v36 + 1432);
  v40 = *(v36 + 1408);
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_51_7();
  sub_19287AEE0();
  a26 = v41;
  OUTLINED_FUNCTION_31_0();
  v42._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v42);
  *(v36 + 1264) = v40;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v36 + 1240));
  sub_192C87324(v39, boxed_opaque_existential_0);
  sub_1928F9340(v36 + 1240, v36 + 1272, &unk_1EAE131B0, &qword_192FBD860);
  *(v36 + 976) = 0u;
  *(v36 + 992) = 0u;
  sub_19286D180(v36 + 1272, v36 + 976);
  *(v36 + 1008) = 3;
  v44 = a26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v44 = v70;
  }

  v46 = *(v44 + 16);
  v45 = *(v44 + 24);
  if (v46 >= v45 >> 1)
  {
    OUTLINED_FUNCTION_20(v45);
    sub_19287AEE0();
    v44 = v71;
  }

  v47 = *(v36 + 1520);
  v48 = *(v36 + 1432);
  v49 = *(v36 + 1408);
  v50 = *(v36 + 1360);
  v51 = *(v36 + 1344);
  *(v44 + 16) = v46 + 1;
  v52 = v44 + 40 * v46;
  v53 = *(v36 + 976);
  v54 = *(v36 + 992);
  *(v52 + 64) = *(v36 + 1008);
  *(v52 + 32) = v53;
  *(v52 + 48) = v54;
  a26 = v44;
  sub_19292E1F0(v36 + 1240, &unk_1EAE131B0, &qword_192FBD860);
  v55._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
  OUTLINED_FUNCTION_0_35();
  sub_192C83188(&a26, v50, v56, v57, sub_1928FA5C4);

  v51[3] = v49;
  OUTLINED_FUNCTION_1_42();
  v51[4] = sub_192C872E0(v58, v59);
  v60 = __swift_allocate_boxed_opaque_existential_0(v51);
  sub_192C87BA0(v48, v60);

  OUTLINED_FUNCTION_7_28();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_58_8();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_192C7E320()
{
  OUTLINED_FUNCTION_44_8();
  v18 = v0;
  v1 = *(v0 + 1568);
  OUTLINED_FUNCTION_18_20();
  v2 = *(v0 + 1360);
  v4 = OUTLINED_FUNCTION_90(v3);
  *(v4 + 16) = xmmword_192FBCD50;
  *(v0 + 1232) = MEMORY[0x1E69E6158];
  *(v0 + 1208) = 0xD00000000000001BLL;
  *(v0 + 1216) = 0x8000000193020270;
  OUTLINED_FUNCTION_12_1(v4);
  sub_19286D180(v0 + 1208, v5);
  *(v4 + 64) = 0;
  v17 = v4;
  OUTLINED_FUNCTION_0_35();
  sub_192C83188(&v17, v2, v6, v7, sub_1928FA5C4);

  v8 = *(v0 + 1496);
  v9 = *(v0 + 1480);
  v10 = *(v0 + 1456);
  v11 = *(v0 + 1448);
  v12 = *(v0 + 1440);
  *(v0 + 288) = *(v0 + 1304);
  *(v0 + 304) = *(v0 + 1320);
  *(v0 + 312) = v12;
  *(v0 + 320) = v11;
  v13 = *(v0 + 848);
  *(v0 + 328) = *(v0 + 832);
  *(v0 + 344) = v13;
  *(v0 + 360) = *(v0 + 864);
  *(v0 + 376) = v10;
  *(v0 + 384) = *(v0 + 1464);
  *(v0 + 400) = v9;
  *(v0 + 416) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 1600) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_34_12(v14);

  return sub_192C83728();
}

uint64_t sub_192C7E4E0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1584) = v0;

  if (!v0)
  {
    *(v5 + 1592) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C7E5E8()
{
  v25 = v0;
  if (*(v0 + 1592) == 0.0)
  {
    OUTLINED_FUNCTION_4_41();
    OUTLINED_FUNCTION_3_39();
    v2 = OUTLINED_FUNCTION_90(v1);
    *(v2 + 16) = xmmword_192FBCD50;
    *(v0 + 1200) = MEMORY[0x1E69E6158];
    *(v0 + 1176) = 0xD00000000000001ELL;
    *(v0 + 1184) = 0x8000000193020250;
    OUTLINED_FUNCTION_12_1(v2);
    v4 = v0 + 1176;
LABEL_5:
    sub_19286D180(v4, v3);
    *(v2 + 64) = 0;
    v24 = v2;
    OUTLINED_FUNCTION_0_35();
    v9 = sub_1928FA5C4;
LABEL_6:
    OUTLINED_FUNCTION_130_1(&v24, v6, v7, v8, v9);

    goto LABEL_7;
  }

  if (*(v0 + 1352) == 1)
  {
    OUTLINED_FUNCTION_4_41();
    OUTLINED_FUNCTION_3_39();
    v2 = OUTLINED_FUNCTION_90(v5);
    *(v2 + 16) = xmmword_192FBCD50;
    *(v0 + 1168) = MEMORY[0x1E69E6158];
    *(v0 + 1144) = 0xD00000000000002BLL;
    *(v0 + 1152) = 0x8000000193020220;
    OUTLINED_FUNCTION_12_1(v2);
    v4 = v0 + 1144;
    goto LABEL_5;
  }

  v19 = sub_192F9679C();
  v20 = [objc_opt_self() processIsEntitledToUse_];

  if ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_20();
    OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_3_39();
    v22 = OUTLINED_FUNCTION_90(v21);
    *(v22 + 16) = xmmword_192FBCD50;
    *(v0 + 1072) = MEMORY[0x1E69E6158];
    *(v0 + 1048) = 0xD000000000000021;
    *(v0 + 1056) = 0x8000000193020150;
    OUTLINED_FUNCTION_12_1(v22);
    sub_19286D180(v0 + 1048, v23);
    *(v22 + 64) = 0;
    v24 = v22;
    OUTLINED_FUNCTION_2_37();
    v9 = sub_192BB97CC;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_15_18();
  *(v0 + 288) = *(v0 + 1304);
  *(v0 + 304) = *(v0 + 1320);
  *(v0 + 312) = v10;
  *(v0 + 320) = v11;
  OUTLINED_FUNCTION_112_2();
  *(v0 + 376) = v12;
  *(v0 + 384) = *v13;
  *(v0 + 400) = v14;
  *(v0 + 416) = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 1600) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_34_12(v16);

  return sub_192C83728();
}

uint64_t sub_192C7E8BC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1608) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C7E9B4()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1376);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 1520);
    sub_19292E1F0(v2, &unk_1EAE144B0, &unk_192FC78B0);
    OUTLINED_FUNCTION_120_1();
    v4 = sub_192F9679C();
    v5 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    AMSError(v6, v7, v8, 0);

    swift_willThrow();
    OUTLINED_FUNCTION_7_28();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_68();

    __asm { BRAA            X1, X16 }
  }

  v30 = *(v0 + 1488);
  v31 = *(v0 + 1496);
  v11 = *(v0 + 1464);
  v12 = *(v0 + 1456);
  v13 = *(v0 + 1448);
  v14 = *(v0 + 1440);
  v15 = *(v0 + 1360);
  v29 = *(v0 + 1472);
  (*(*(v0 + 1392) + 32))(*(v0 + 1400), v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200, &unk_192FC22D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD50;
  v17 = v15[2];
  *(v0 + 1616) = v17;
  v18 = v15[3];
  *(v0 + 1624) = v18;
  v19 = v15[4];
  *(v0 + 1632) = v19;
  *(v16 + 32) = sub_192C7AA64(0, v17, v18, v19);
  *(v16 + 40) = v20;
  *(v16 + 72) = MEMORY[0x1E69E6158];
  *(v16 + 48) = v14;
  *(v16 + 56) = v13;
  swift_bridgeObjectRetain_n();
  *(v0 + 1640) = sub_192F966CC();
  *(v0 + 424) = *(v0 + 1304);
  *(v0 + 440) = *(v0 + 1320);
  *(v0 + 448) = v14;
  *(v0 + 456) = v13;
  v21 = *(v0 + 848);
  *(v0 + 464) = *(v0 + 832);
  *(v0 + 480) = v21;
  *(v0 + 496) = *(v0 + 864);
  *(v0 + 512) = v12;
  *(v0 + 520) = v11;
  *(v0 + 528) = v29;
  *(v0 + 544) = v30;
  *(v0 + 552) = v31;
  v22 = swift_task_alloc();
  *(v0 + 1648) = v22;
  *v22 = v0;
  v22[1] = sub_192C7EC94;
  OUTLINED_FUNCTION_51(*(v0 + 1400));
  OUTLINED_FUNCTION_68();

  return sub_192C83930(v23, v24, v25, v26);
}

uint64_t sub_192C7EC94()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1656) = v5;
  *(v3 + 1664) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192C7EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_67_6();
  OUTLINED_FUNCTION_44_8();
  v38 = [*(v36 + 1656) responseStatusCode];
  v39 = *(v36 + 1656);
  if (v38 == 204)
  {
    OUTLINED_FUNCTION_55_8();

    type metadata accessor for DeveloperSilentAuthTokenManager.DSATRequestError(0, v37, v35, v34);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_96_2();
    v40 = swift_allocError();
LABEL_16:
    swift_willThrow();
LABEL_17:

    OUTLINED_FUNCTION_18_20();
    OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_51_7();
    if (sub_192C85724(v40) & 1) != 0 || (v54 = *(v36 + 1632), v55 = *(v36 + 1624), v56 = *(v36 + 1616), *(v36 + 1328) = v40, v57 = v40, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200), type metadata accessor for DeveloperSilentAuthTokenManager.DSATRequestError(0, v56, v55, v54), swift_dynamicCast()) && (*(v36 + 1009) = 0, OUTLINED_FUNCTION_8_32(), (sub_192F9777C()))
    {
      v46 = *(v36 + 1520);
      *(*(v36 + 1344) + 24) = *(v36 + 1408);
      OUTLINED_FUNCTION_1_42();
      v49 = sub_192C872E0(v47, v48);
      v50 = OUTLINED_FUNCTION_135_1(v49);
      v51 = sub_192C86184(v46);
      v52 = *(v36 + 1520);
      v53 = *(v36 + 1448);
      OUTLINED_FUNCTION_9_27(v51);
      MEMORY[0x10] = v60;
      MEMORY[0x18] = v53;
      MEMORY[0x28] = 0;
      MEMORY[0x30] = 0;
      MEMORY[0x20] = 0;
      v62 = *(v61 + 32);
      sub_192F95CEC();

      v63 = sub_192F95CFC();
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
      sub_192C87BA0(0, v50);

      v64 = OUTLINED_FUNCTION_65_5();
      v65(v64);
      OUTLINED_FUNCTION_7_28();

      OUTLINED_FUNCTION_7();
    }

    else
    {

      OUTLINED_FUNCTION_59_5();
      swift_willThrow();

      v58 = OUTLINED_FUNCTION_48();
      v59(v58);
      OUTLINED_FUNCTION_7_28();

      OUTLINED_FUNCTION_7_27();
    }

    OUTLINED_FUNCTION_58_8();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  if ([*(v36 + 1656) object])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    a9 = 0u;
    a10 = 0u;
  }

  *(v36 + 1080) = a9;
  *(v36 + 1096) = a10;
  if (!*(v36 + 1104))
  {

    sub_19292E1F0(v36 + 1080, &unk_1EAE131B0, &qword_192FBD860);
LABEL_12:
    v42 = *(v36 + 1656);
    v43 = sub_192F9679C();
    *&a9 = 0;
    *(&a9 + 1) = 0xE000000000000000;
    sub_192F972BC();
    MEMORY[0x193B10CE0](0xD000000000000036, 0x80000001930201E0);
    if ([v42 object])
    {
      sub_192F9715C();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v36 + 1112) = 0u;
      *(v36 + 1128) = 0u;
    }

    v39 = *(v36 + 1656);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131B0, &qword_192FBD860);
    v44 = sub_192F9682C();
    MEMORY[0x193B10CE0](v44);

    v45 = sub_192F9679C();

    v40 = AMSError(301, v43, v45, 0);

    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0, &unk_192FBEF80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v41 = *(v36 + 1664);
  DeveloperSilentAuthTokenResult.init(withDictionary:account:bundleId:)(*(v36 + 1336), *(v36 + 1520), *(v36 + 1440), *(v36 + 1448), *(v36 + 1424));
  if (v41)
  {
    v40 = v41;
    v39 = *(v36 + 1656);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_17_22();
  *(v36 + 560) = *(v36 + 1304);
  *(v36 + 576) = *(v36 + 1320);
  *(v36 + 584) = v75;
  *(v36 + 592) = v76;
  OUTLINED_FUNCTION_112_2();
  *(v36 + 648) = v77;
  *(v36 + 656) = *v78;
  *(v36 + 672) = v79;
  *(v36 + 688) = v80;
  v81 = swift_task_alloc();
  *(v36 + 1672) = v81;
  *v81 = v36;
  v81[1] = sub_192C7F398;
  OUTLINED_FUNCTION_51(*(v36 + 1360));
  OUTLINED_FUNCTION_58_8();

  return sub_192C834D0();
}

uint64_t sub_192C7F398()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1680) = v0;

  if (!v0)
  {
    *(v5 + 1688) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C7F4A0()
{
  if (*(v0 + 1688) > 0.0 && (*(v0 + 928) = OUTLINED_FUNCTION_117_1(), *(v0 + 936) = v4, *(v0 + 944) = *(v0 + 1472), *(v0 + 960) = v5, *(v0 + 968) = v6, v7 = sub_192F9679C(), v8 = [objc_opt_self() processIsEntitledToUse_], v7, v8))
  {
    v9 = swift_task_alloc();
    *(v0 + 1696) = v9;
    *v9 = v0;
    v9[1] = sub_192C7F680;
    OUTLINED_FUNCTION_51(*(v0 + 1424));

    return sub_192C88C80();
  }

  else
  {

    OUTLINED_FUNCTION_56_7();
    OUTLINED_FUNCTION_1_42();
    v1[4] = sub_192C872E0(v11, v12);
    __swift_allocate_boxed_opaque_existential_0(v1);
    v13 = OUTLINED_FUNCTION_96_2();
    sub_192C87BA0(v13, v14);

    v15 = OUTLINED_FUNCTION_102();
    v16(v15);
    OUTLINED_FUNCTION_7_28();

    OUTLINED_FUNCTION_7();

    return v17();
  }
}

uint64_t sub_192C7F680()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 1704) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C7F780()
{
  OUTLINED_FUNCTION_56_7();
  OUTLINED_FUNCTION_1_42();
  v0[4] = sub_192C872E0(v3, v4);
  __swift_allocate_boxed_opaque_existential_0(v0);
  v5 = OUTLINED_FUNCTION_96_2();
  sub_192C87BA0(v5, v6);

  v7 = OUTLINED_FUNCTION_102();
  v8(v7);
  OUTLINED_FUNCTION_7_28();

  OUTLINED_FUNCTION_7();

  return v9();
}

uint64_t sub_192C7F870()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_10();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_192C7F8F0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_32_10();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C7F978()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_32_10();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C7FA00()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_32_10();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C7FA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_67_6();
  OUTLINED_FUNCTION_44_8();
  v32 = *(v29 + 1664);
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_3_39();
  v61 = *v33;
  v62 = v34;
  v63 = v35;
  v36 = OUTLINED_FUNCTION_46_8();
  if ((sub_192C85724(v36) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_8();
    *(v29 + 1328) = v32;
    v44 = v32;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
    if (!OUTLINED_FUNCTION_29_15(v45) || (*(v29 + 1009) = 0, OUTLINED_FUNCTION_8_32(), (sub_192F9777C() & 1) == 0))
    {

      OUTLINED_FUNCTION_59_5();
      swift_willThrow();

      v46 = OUTLINED_FUNCTION_92_2();
      v47(v46);
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_1_42();
  v39 = sub_192C872E0(v37, v38);
  OUTLINED_FUNCTION_135_1(v39);
  v40 = OUTLINED_FUNCTION_105_2();
  v41 = *(v29 + 1520);
  if (v28)
  {
    OUTLINED_FUNCTION_49_9();

    v42 = OUTLINED_FUNCTION_64_5();
    v43(v42);
    __swift_deallocate_boxed_opaque_existential_0(v31);
LABEL_7:
    OUTLINED_FUNCTION_45_9(*(v29 + 1432));

    OUTLINED_FUNCTION_43();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_9_27(v40);
  OUTLINED_FUNCTION_61_7(v48);

  v49 = sub_192F95CFC();
  OUTLINED_FUNCTION_54_8(v49);

  v50 = OUTLINED_FUNCTION_65_5();
  v51(v50);
  OUTLINED_FUNCTION_7_28();

  OUTLINED_FUNCTION_7();
LABEL_9:
  OUTLINED_FUNCTION_58_8();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, a26, a27, a28);
}

uint64_t sub_192C7FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_67_6();
  OUTLINED_FUNCTION_44_8();
  v31 = *(v28 + 1424);

  sub_192C87388(v31);
  v32 = *(v28 + 1680);
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_51_7();
  v33 = OUTLINED_FUNCTION_46_8();
  if ((sub_192C85724(v33) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_8();
    *(v28 + 1328) = v32;
    v41 = v32;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
    if (!OUTLINED_FUNCTION_29_15(v42) || (*(v28 + 1009) = 0, OUTLINED_FUNCTION_8_32(), (sub_192F9777C() & 1) == 0))
    {

      OUTLINED_FUNCTION_59_5();
      swift_willThrow();

      v43 = OUTLINED_FUNCTION_92_2();
      v44(v43);
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_1_42();
  v36 = sub_192C872E0(v34, v35);
  OUTLINED_FUNCTION_135_1(v36);
  v37 = OUTLINED_FUNCTION_105_2();
  v38 = *(v28 + 1520);
  if (v28 != -1304)
  {
    OUTLINED_FUNCTION_49_9();

    v39 = OUTLINED_FUNCTION_64_5();
    v40(v39);
    __swift_deallocate_boxed_opaque_existential_0(v30);
LABEL_7:
    OUTLINED_FUNCTION_45_9(*(v28 + 1432));

    OUTLINED_FUNCTION_43();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_9_27(v37);
  OUTLINED_FUNCTION_61_7(v45);

  v46 = sub_192F95CFC();
  OUTLINED_FUNCTION_54_8(v46);

  v47 = OUTLINED_FUNCTION_65_5();
  v48(v47);
  OUTLINED_FUNCTION_7_28();

  OUTLINED_FUNCTION_7();
LABEL_9:
  OUTLINED_FUNCTION_58_8();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_192C7FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_67_6();
  OUTLINED_FUNCTION_44_8();
  v31 = *(v28 + 1424);

  sub_192C87388(v31);
  v32 = *(v28 + 1704);
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_51_7();
  v33 = OUTLINED_FUNCTION_46_8();
  if ((sub_192C85724(v33) & 1) == 0)
  {
    OUTLINED_FUNCTION_55_8();
    *(v28 + 1328) = v32;
    v41 = v32;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
    if (!OUTLINED_FUNCTION_29_15(v42) || (*(v28 + 1009) = 0, OUTLINED_FUNCTION_8_32(), (sub_192F9777C() & 1) == 0))
    {

      OUTLINED_FUNCTION_59_5();
      swift_willThrow();

      v43 = OUTLINED_FUNCTION_92_2();
      v44(v43);
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_1_42();
  v36 = sub_192C872E0(v34, v35);
  OUTLINED_FUNCTION_135_1(v36);
  v37 = OUTLINED_FUNCTION_105_2();
  v38 = *(v28 + 1520);
  if (v28 != -1304)
  {
    OUTLINED_FUNCTION_49_9();

    v39 = OUTLINED_FUNCTION_64_5();
    v40(v39);
    __swift_deallocate_boxed_opaque_existential_0(v30);
LABEL_7:
    OUTLINED_FUNCTION_45_9(*(v28 + 1432));

    OUTLINED_FUNCTION_43();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_9_27(v37);
  OUTLINED_FUNCTION_61_7(v45);

  v46 = sub_192F95CFC();
  OUTLINED_FUNCTION_54_8(v46);

  v47 = OUTLINED_FUNCTION_65_5();
  v48(v47);
  OUTLINED_FUNCTION_7_28();

  OUTLINED_FUNCTION_7();
LABEL_9:
  OUTLINED_FUNCTION_58_8();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t DeveloperSilentAuthTokenManager.presentConsentUI(cachePolicy:)()
{
  OUTLINED_FUNCTION_5();
  v1[42] = v2;
  v1[43] = v0;
  v1[41] = v3;
  OUTLINED_FUNCTION_86_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[44] = v4;
  *v4 = v5;
  v4[1] = sub_192C80180;
  OUTLINED_FUNCTION_53_0();

  return sub_192C80718(v6, v7, v8);
}

uint64_t sub_192C80180()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C80278()
{
  OUTLINED_FUNCTION_82_3();
  v22 = v0;
  if (*(v0 + 176))
  {
    sub_19292D380((v0 + 152), *(v0 + 328));
    OUTLINED_FUNCTION_7();
  }

  else
  {
    sub_19292E1F0(v0 + 152, &qword_1EAE14938, &qword_192FC94D0);
    v2 = sub_192F9679C();
    v3 = sub_192F9679C();
    AMSError(6, v2, v3, 0);

    swift_willThrow();
    memcpy(v20, *(v0 + 344), sizeof(v20));
    sub_19287AEE0();
    v21 = v4;
    v5._countAndFlagsBits = 0xD00000000000002FLL;
    v5._object = 0x800000019301FB90;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v5);
    swift_getErrorValue();
    *(v0 + 256) = *(v0 + 304);
    __swift_allocate_boxed_opaque_existential_0((v0 + 232));
    OUTLINED_FUNCTION_28_2();
    (*(v6 + 16))();
    sub_1928F9340(v0 + 232, v0 + 264, &unk_1EAE131B0, &qword_192FBD860);
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    sub_19286D180(v0 + 264, v0 + 192);
    *(v0 + 224) = 3;
    v7 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_113();
      sub_19287AEE0();
      v7 = v18;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      OUTLINED_FUNCTION_43_1(v8);
      sub_19287AEE0();
      v7 = v19;
    }

    v10 = *(v0 + 336);
    *(v7 + 16) = v9 + 1;
    v11 = v7 + 40 * v9;
    v12 = *(v0 + 192);
    v13 = *(v0 + 208);
    *(v11 + 64) = *(v0 + 224);
    *(v11 + 32) = v12;
    *(v11 + 48) = v13;
    v21 = v7;
    sub_19292E1F0(v0 + 232, &unk_1EAE131B0, &qword_192FBD860);
    v14._countAndFlagsBits = OUTLINED_FUNCTION_44();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    OUTLINED_FUNCTION_2_37();
    sub_192C83188(&v21, v10, v15, v16, sub_192BB97CC);

    swift_willThrow();
    OUTLINED_FUNCTION_43();
  }

  return v1();
}

uint64_t sub_192C80530(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_129_1();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_44_8();
  a34 = v36;
  memcpy(&__dst, *(v36 + 344), 0x88uLL);
  sub_19287AEE0();
  a27 = v39;
  OUTLINED_FUNCTION_66_7();
  v40._countAndFlagsBits = 0xD00000000000002FLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
  swift_getErrorValue();
  *(v36 + 256) = *(v36 + 304);
  __swift_allocate_boxed_opaque_existential_0((v36 + 232));
  OUTLINED_FUNCTION_28_2();
  (*(v41 + 16))();
  sub_1928F9340(v36 + 232, v36 + 264, &unk_1EAE131B0, &qword_192FBD860);
  *(v36 + 192) = 0u;
  *(v36 + 208) = 0u;
  sub_19286D180(v36 + 264, v36 + 192);
  *(v36 + 224) = 3;
  v42 = a27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v42 = v59;
  }

  v44 = *(v42 + 16);
  v43 = *(v42 + 24);
  if (v44 >= v43 >> 1)
  {
    OUTLINED_FUNCTION_20(v43);
    sub_19287AEE0();
    v42 = v60;
  }

  *(v42 + 16) = v44 + 1;
  OUTLINED_FUNCTION_16_20(v42 + 40 * v44);
  a27 = v42;
  sub_19292E1F0(v36 + 232, &unk_1EAE131B0, &qword_192FBD860);
  v45._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_83_4(v46, v47, v48, v49, sub_192BB97CC);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_126_1();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, __dst, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_192C80718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1184) = v3;
  *(v4 + 1176) = a3;
  *(v4 + 1168) = a2;
  *(v4 + 1160) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  *(v4 + 1192) = swift_task_alloc();
  *(v4 + 1200) = *v3;
  *(v4 + 1216) = *(v3 + 16);
  memcpy((v4 + 624), (v3 + 24), 0x70uLL);

  return MEMORY[0x1EEE6DFA0](sub_192C807E0, 0, 0);
}

uint64_t sub_192C807E0()
{
  v33 = v0;
  memcpy(v32, (v0[148] + 24), sizeof(v32));
  if (sub_192C859A0())
  {
    sub_192874CD0(0, &qword_1EAE14A98, 0x1E696AAE8);
    v1 = sub_192C92CA4(0xD00000000000001CLL, 0x80000001930177D0);
    if (!v1)
    {
      v1 = [objc_opt_self() mainBundle];
    }

    v0[153] = v1;
    v2 = v0[152];
    v3 = v0[151];
    v31 = v0[150];
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_33_11(0xD000000000000021, v4 | 0x8000000000000000);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v6 = OUTLINED_FUNCTION_90(v5);
    *(v6 + 16) = xmmword_192FBCD50;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1928FDB30();
    *(v6 + 64) = v7;
    *(v6 + 32) = v3;
    *(v6 + 40) = v2;
    swift_bridgeObjectRetain_n();
    v8 = sub_192F967FC();
    v10 = v9;

    v0[154] = v8;
    v0[155] = v10;
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_33_11(0xD000000000000024, v11 | 0x8000000000000000);
    v12 = OUTLINED_FUNCTION_90(v5);
    *(v12 + 16) = xmmword_192FBCD50;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = v7;
    *(v12 + 32) = v3;
    *(v12 + 40) = v2;
    v13 = sub_192F967FC();
    v15 = v14;

    v0[156] = v13;
    v0[157] = v15;
    OUTLINED_FUNCTION_122_0();
    v0[142] = OUTLINED_FUNCTION_33_11(0xD00000000000002ALL, v16 | 0x8000000000000000);
    v0[143] = v17;
    OUTLINED_FUNCTION_67_0();
    v0[158] = sub_192F969DC();
    v0[159] = v18;
    OUTLINED_FUNCTION_122_0();
    v0[140] = OUTLINED_FUNCTION_33_11(0xD00000000000002CLL, v19 | 0x8000000000000000);
    v0[141] = v20;
    OUTLINED_FUNCTION_67_0();
    v0[160] = sub_192F969DC();
    v0[161] = v21;
    v0[27] = v31;
    v0[28] = v3;
    v0[29] = v2;
    OUTLINED_FUNCTION_101_2(v0 + 30);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v0[162] = v22;
    *v22 = v23;
    v22[1] = sub_192C80BD4;

    return DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_85_3();
    v26 = OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_65_0();
    AMSError(v27, v28, v29, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();

    return v30();
  }
}

uint64_t sub_192C80BD4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 1304) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C80D00()
{
  v39 = v0;
  __swift_project_boxed_opaque_existential_0((v0 + 800), *(v0 + 824));
  v1 = OUTLINED_FUNCTION_102();
  if (v2(v1) == 2)
  {
    v3 = *(v0 + 1224);
    v4 = *(v0 + 1176);
    v5 = *(v0 + 1160);

    OUTLINED_FUNCTION_101_2(&v37);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v7 = OUTLINED_FUNCTION_90(v6);
    *(v7 + 16) = xmmword_192FBCD50;
    *(v0 + 904) = MEMORY[0x1E69E6158];
    *(v0 + 880) = 0xD00000000000002CLL;
    *(v0 + 888) = 0x80000001930200F0;
    OUTLINED_FUNCTION_12_1(v7);
    sub_19286D180(v0 + 880, v8);
    *(v7 + 64) = 0;
    v38 = v7;
    OUTLINED_FUNCTION_0_35();
    sub_192C83188(&v38, v4, v9, v10, sub_1928FA5C4);

    sub_19292D2FC(v0 + 800, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 800));

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_77_6();

    __asm { BRAA            X1, X16 }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 800));
  v13 = [objc_allocWithZone(AMSEngagementRequest) init];
  *(v0 + 1312) = v13;
  sub_192F95A3C();
  sub_192F95A8C();
  OUTLINED_FUNCTION_111_2();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v14, v15, v16) != 1)
  {
    v17 = sub_192F9596C();
    OUTLINED_FUNCTION_30_2();
    v18 = OUTLINED_FUNCTION_48();
    v19(v18);
  }

  v35 = *(v0 + 1280);
  v36 = *(v0 + 1288);
  v34 = *(v0 + 1272);
  v20 = *(v0 + 1264);
  v21 = *(v0 + 1256);
  v22 = *(v0 + 1248);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  [v13 setURL_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14AA0, &unk_192FC9120);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_192FBED20;
  *(v0 + 1104) = 0x786554656C746974;
  *(v0 + 1112) = 0xE900000000000074;
  v26 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_132_1(v0 + 1104);
  *(v25 + 96) = v26;
  *(v25 + 72) = v24;
  *(v25 + 80) = v23;
  strcpy((v0 + 1088), "subtitleText");
  *(v0 + 1101) = 0;
  *(v0 + 1102) = -5120;
  OUTLINED_FUNCTION_132_1(v0 + 1088);
  *(v25 + 168) = v26;
  *(v25 + 144) = v22;
  *(v25 + 152) = v21;
  *(v0 + 1072) = 0x65546E6F74747562;
  *(v0 + 1080) = 0xEA00000000007478;
  OUTLINED_FUNCTION_132_1(v0 + 1072);
  *(v25 + 240) = v26;
  *(v25 + 216) = v20;
  *(v25 + 224) = v34;
  *(v0 + 1040) = 0xD000000000000013;
  *(v0 + 1048) = 0x800000019301FFD0;
  OUTLINED_FUNCTION_132_1(v0 + 1040);
  *(v25 + 312) = v26;
  *(v25 + 288) = v35;
  *(v25 + 296) = v36;
  sub_192F966CC();
  v27 = sub_192F9667C();

  [v13 setClientData_];

  v28 = [objc_allocWithZone(AMSSystemEngagementTask) initWithRequest_];
  *(v0 + 1320) = v28;
  v29 = [v28 present];
  *(v0 + 1328) = v29;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1152;
  *(v0 + 24) = sub_192C81250;
  v30 = swift_continuation_init();
  *(v0 + 792) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142E8, &unk_192FC69D8);
  *(v0 + 768) = v30;
  *(v0 + 736) = MEMORY[0x1E69E9820];
  *(v0 + 744) = 1107296256;
  *(v0 + 752) = sub_192C92848;
  *(v0 + 760) = &block_descriptor_19;
  [v29 resultWithCompletion_];
  OUTLINED_FUNCTION_77_6();

  return MEMORY[0x1EEE6DEC8](v31);
}

uint64_t sub_192C81250()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1336) = *(v3 + 48);
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192C8134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_93_3();
  a39 = v41;
  a40 = v42;
  OUTLINED_FUNCTION_113_0();
  a38 = v40;
  v43 = *(v40 + 1328);
  v44 = *(v40 + 1152);
  *(v40 + 1344) = v44;

  v45 = [v44 userInfo];
  v46 = sub_192F9669C();

  v47 = sub_192CE9878(v46);

  if (!v47)
  {
    goto LABEL_11;
  }

  sub_192952700(0x6E6F69746361, 0xE600000000000000, v47);

  if (!*(v40 + 936))
  {
    sub_19292E1F0(v40 + 912, &unk_1EAE131B0, &qword_192FBD860);
LABEL_11:
    v59 = *(v40 + 1320);
    v60 = *(v40 + 1312);
    v61 = *(v40 + 1224);
    v62 = sub_192F9679C();
    v63 = sub_192F9679C();
    OUTLINED_FUNCTION_53_0();
    AMSError(v64, v65, v66, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();
    goto LABEL_12;
  }

  v48 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v49 = *(v40 + 1176);
  v50 = v49[2];
  *(v40 + 1352) = v50;
  v51 = v49[3];
  *(v40 + 1360) = v51;
  v52 = v49[4];
  *(v40 + 1368) = v52;
  v53 = sub_192C7A7D0();
  *(v40 + 879) = v53;
  if (v53 == 2)
  {
    goto LABEL_11;
  }

  v54 = v53 & 1;
  *(v40 + 878) = v53 & 1;
  *(v40 + 873) = 0;
  *(v40 + 1376) = type metadata accessor for DeveloperSilentAuthTokenManager.SheetAction(0, v50, v51, v52);
  *(v40 + 1384) = swift_getWitnessTable();
  if (sub_192F9777C())
  {
    v55 = *(v40 + 1216);
    *(v40 + 352) = *(v40 + 1200);
    *(v40 + 368) = v55;
    OUTLINED_FUNCTION_101_2((v40 + 376));
    v56 = swift_task_alloc();
    *(v40 + 1392) = v56;
    *v56 = v40;
    v56[1] = sub_192C81820;
    OUTLINED_FUNCTION_68_6();

    return DeveloperSilentAuthTokenManager.updateConsent(withStatus:)();
  }

  *(v40 + 874) = v54;
  *(v40 + 875) = 1;
  if (sub_192F9777C())
  {
    v75 = *(v40 + 1208);
    v76 = *(v40 + 1200);
    v89 = *(v40 + 1176);
    v90 = *(v40 + 1216);
    OUTLINED_FUNCTION_101_2(&a14);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v78 = OUTLINED_FUNCTION_90(v77);
    *(v78 + 16) = xmmword_192FBCD50;
    *(v40 + 968) = v48;
    *(v40 + 944) = 0xD000000000000024;
    *(v40 + 952) = 0x80000001930200A0;
    OUTLINED_FUNCTION_12_1(v78);
    sub_19286D180(v40 + 944, v79);
    *(v78 + 64) = 0;
    a28 = v78;
    OUTLINED_FUNCTION_0_35();
    sub_192C83188(&a28, v89, v80, v81, sub_1928FA5C4);

    *(v40 + 488) = v76;
    *(v40 + 496) = v75;
    *(v40 + 504) = v90;
    OUTLINED_FUNCTION_101_2((v40 + 512));
    OUTLINED_FUNCTION_102();
    default argument 0 of DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v40 + 1424) = v82;
    *v82 = v83;
    v82[1] = sub_192C81CC8;
    OUTLINED_FUNCTION_68_6();

    return DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)();
  }

  v85 = *(v40 + 1320);
  v86 = *(v40 + 1312);
  v87 = *(v40 + 1224);
  v88 = *(v40 + 1160);

  *(v88 + 32) = 0;
  *v88 = 0u;
  *(v88 + 16) = 0u;

  OUTLINED_FUNCTION_7();
LABEL_12:
  OUTLINED_FUNCTION_68_6();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_192C81820()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1400) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C81918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_93_3();
  a39 = v41;
  a40 = v42;
  OUTLINED_FUNCTION_113_0();
  a38 = v40;
  v43 = (v40 + 840);
  v44 = *(v40 + 879) & 1;
  OUTLINED_FUNCTION_101_2(&a14);
  sub_19287AEE0();
  a29 = v45;
  OUTLINED_FUNCTION_31_0();
  v46._countAndFlagsBits = OUTLINED_FUNCTION_120_1();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
  *(v40 + 876) = v44;
  *(v40 + 877) = 0;
  v47 = sub_192F9777C();
  v48 = 0x64657070696B53;
  if (v47)
  {
    v48 = 0x6465746E617247;
  }

  *(v40 + 1000) = MEMORY[0x1E69E6158];
  *(v40 + 976) = v48;
  *(v40 + 984) = 0xE700000000000000;
  sub_1928F9340(v40 + 976, v40 + 1008, &unk_1EAE131B0, &qword_192FBD860);
  *v43 = 0u;
  *(v40 + 856) = 0u;
  sub_19286D180(v40 + 1008, v40 + 840);
  *(v40 + 872) = 3;
  v49 = a29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v49 = v64;
    a29 = v64;
  }

  v51 = *(v49 + 16);
  v50 = *(v49 + 24);
  if (v51 >= v50 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v50);
    sub_19287AEE0();
    v49 = v65;
  }

  v52 = *(v40 + 1216);
  v66 = *(v40 + 1200);
  v53 = *(v40 + 1176);
  *(v49 + 16) = v51 + 1;
  v54 = v49 + 40 * v51;
  v55 = *v43;
  v56 = *(v40 + 856);
  *(v54 + 64) = *(v40 + 872);
  *(v54 + 32) = v55;
  *(v54 + 48) = v56;
  a29 = v49;
  sub_19292E1F0(v40 + 976, &unk_1EAE131B0, &qword_192FBD860);
  v57._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
  OUTLINED_FUNCTION_0_35();
  sub_192C83188(&a29, v53, v58, v59, sub_1928FA5C4);

  *(v40 + 80) = v66;
  *(v40 + 96) = v52;
  OUTLINED_FUNCTION_101_2((v40 + 104));
  default argument 0 of DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v40 + 1408) = v60;
  *v60 = v61;
  v60[1] = sub_192C81BD0;
  OUTLINED_FUNCTION_68_6();

  return DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)();
}

uint64_t sub_192C81BD0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1416) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C81CC8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1432) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C81DC0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_50_7();

  OUTLINED_FUNCTION_7();

  return v3();
}

uint64_t sub_192C81E30()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192C81E94()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = v0[166];
  v2 = v0[165];
  v3 = v0[164];
  v4 = v0[153];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_192C81F20()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_50_7();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192C81F94()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_50_7();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192C82008()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_50_7();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192C8207C(uint64_t a1)
{
  *(v2 + 456) = a1;
  *(v2 + 464) = *(a1 + 24);
  v3 = *(a1 + 16);
  *(v2 + 472) = v3;
  *(v2 + 480) = swift_getAssociatedTypeWitness();
  v4 = sub_192F9704C();
  *(v2 + 488) = v4;
  *(v2 + 496) = *(v4 - 8);
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = *(v3 - 8);
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = *v1;
  *(v2 + 88) = *(v1 + 8);
  *(v2 + 104) = *(v1 + 24);
  *(v2 + 120) = *(v1 + 40);
  *(v2 + 552) = *(v1 + 56);
  memcpy((v2 + 16), (v1 + 64), 0x48uLL);

  return MEMORY[0x1EEE6DFA0](sub_192C82218, 0, 0);
}

uint64_t sub_192C82218()
{
  v51 = v0;
  v2 = *(v0 + 552);
  if (v2)
  {
    v3 = sub_192F967CC();
    v5 = v4;
    if (v3 == sub_192F967CC() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_102();
      v8 = sub_192F9775C();
    }

    v12 = *(v0 + 544);
    v13 = v12;
    v11 = v2;

    if (v8)
    {
      if (v12)
      {
        v14 = *(v0 + 464);
        v15 = *(v0 + 456);
        v16 = AMSAccountMediaTypeAppStoreSandbox;
        *(v0 + 560) = AMSAccountMediaTypeAppStoreSandbox;

        v17 = *(v14 + 32);
        v18 = v16;
        OUTLINED_FUNCTION_54_0();
        v17();
        sub_192BAAE84(v13);
        *(v0 + 568) = v19;
        ACAccount.dsid.getter();
        swift_task_alloc();
        OUTLINED_FUNCTION_42_0();
        *(v0 + 576) = v20;
        v21 = *(v15 + 32);
        *v20 = v22;
        v20[1] = sub_192C826A4;
        v52 = v21;
        OUTLINED_FUNCTION_63_5();
        OUTLINED_FUNCTION_88_3();

        return AccountStoreProtocol.iTunesAccount(with:dsid:username:)();
      }

      goto LABEL_19;
    }

    if (!v12)
    {
LABEL_19:
      v27 = *(v0 + 552);
      v45 = *(v0 + 544);
      v28 = *(v0 + 464);
      v29 = *(v0 + 456);
      v30 = *(v0 + 104);
      v46 = *(v0 + 88);
      v47 = v30;
      v48 = *(v0 + 120);
      v49 = v27;
      OUTLINED_FUNCTION_102_2(&v45);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
      v32 = OUTLINED_FUNCTION_90(v31);
      *(v32 + 16) = xmmword_192FBCD50;
      *(v0 + 240) = MEMORY[0x1E69E6158];
      *(v0 + 216) = 0xD000000000000030;
      *(v0 + 224) = 0x8000000193020390;
      *(v32 + 48) = 0u;
      *(v32 + 32) = 0u;
      v33 = v11;
      sub_19286D180(v0 + 216, v32 + 32);
      *(v32 + 64) = 0;
      v50 = v32;
      OUTLINED_FUNCTION_0_35();
      sub_192C83188(&v50, v29, v34, v35, sub_1928FA5C4);

      v36 = *(v28 + 32);
      v37 = v33;
      OUTLINED_FUNCTION_54_0();
      v36();

      swift_task_alloc();
      OUTLINED_FUNCTION_42_0();
      *(v0 + 592) = v38;
      *v38 = v39;
      v38[1] = sub_192C8297C;
      OUTLINED_FUNCTION_88_3();

      return AccountStoreProtocol.activeiTunesAccount(for:)();
    }

    goto LABEL_16;
  }

  v9 = *(v0 + 544);
  v10 = v9;
  if (v9)
  {
    v11 = 0;
LABEL_16:

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_88_3();

    return v25();
  }

  OUTLINED_FUNCTION_89_3();
  v41 = OUTLINED_FUNCTION_40_10();
  v42 = OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_22_19(v42);

  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_3();

  return v43();
}

uint64_t sub_192C826A4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C827A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  v14 = *(v12 + 536);
  v15 = *(v12 + 520);
  v16 = *(v12 + 512);
  v18 = *(v12 + 472);
  v17 = *(v12 + 480);

  (*(v15 + 8))(v14, v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    (*(*(v12 + 496) + 8))(*(v12 + 512), *(v12 + 488));
LABEL_7:
    v28 = *(v12 + 560);
    v29 = OUTLINED_FUNCTION_40_10();
    v30 = OUTLINED_FUNCTION_79_4();
    OUTLINED_FUNCTION_22_19(v30);

    swift_willThrow();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_31();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }

  sub_192874CD0(0, &qword_1EAE12340, 0x1E6959A28);
  OUTLINED_FUNCTION_65_0();
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_192C8297C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C82A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  v14 = *(v12 + 528);
  v15 = *(v12 + 520);
  v16 = *(v12 + 504);
  v18 = *(v12 + 472);
  v17 = *(v12 + 480);

  (*(v15 + 8))(v14, v18);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    (*(*(v12 + 496) + 8))(*(v12 + 504), *(v12 + 488));
LABEL_7:
    v28 = *(v12 + 552);
    v29 = OUTLINED_FUNCTION_40_10();
    v30 = OUTLINED_FUNCTION_79_4();
    OUTLINED_FUNCTION_22_19(v30);

    swift_willThrow();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_31();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }

  sub_192874CD0(0, &qword_1EAE12340, 0x1E6959A28);
  OUTLINED_FUNCTION_65_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_192C82C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_93_3();
  a39 = v43;
  a40 = v44;
  OUTLINED_FUNCTION_113_0();
  a38 = v40;
  v45 = 0xD000000000000013;
  v46 = *(v40 + 552);
  v47 = *(v40 + 544);

  a11 = v47;
  OUTLINED_FUNCTION_87_3();
  a18 = v46;
  OUTLINED_FUNCTION_102_2(&a11);
  sub_19287AEE0();
  a28 = v48;
  v49._countAndFlagsBits = 0xD000000000000026;
  v49._object = 0x80000001930203D0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
  swift_getErrorValue();
  *(v40 + 336) = *(v40 + 408);
  __swift_allocate_boxed_opaque_existential_0((v40 + 312));
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v50();
  sub_1928F9340(v40 + 312, v40 + 344, &unk_1EAE131B0, &qword_192FBD860);
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  sub_19286D180(v40 + 344, v40 + 176);
  if ((OUTLINED_FUNCTION_127_1() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v45 = v71;
  }

  v52 = *(v45 + 16);
  v51 = *(v45 + 24);
  v53 = (v52 + 1);
  if (v52 >= v51 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v51);
    sub_19287AEE0();
    v45 = v72;
  }

  v54 = *(v40 + 584);
  v55 = *(v40 + 544);
  OUTLINED_FUNCTION_123_1();
  *(v45 + 16) = v53;
  OUTLINED_FUNCTION_16_20(v45 + 40 * v52);
  a28 = v45;
  sub_19292E1F0(v40 + 312, &unk_1EAE131B0, &qword_192FBD860);
  v56._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v56);
  OUTLINED_FUNCTION_2_37();
  sub_192C83188(&a28, v41, v57, v58, sub_192BB97CC);

  (*(v42 + 8))(a10, v47);
  v59 = *(v40 + 560);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_31_0();
  v60 = sub_192F9679C();
  v61 = OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_22_19(v61);

  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_68_6();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_192C82EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_93_3();
  a39 = v45;
  a40 = v46;
  OUTLINED_FUNCTION_113_0();
  a38 = v41;
  a11 = *(v41 + 544);
  OUTLINED_FUNCTION_87_3();
  a18 = v47;
  OUTLINED_FUNCTION_102_2(&a11);
  sub_19287AEE0();
  a28 = v48;
  v49._countAndFlagsBits = 0xD000000000000026;
  v49._object = 0x80000001930203D0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
  swift_getErrorValue();
  *(v41 + 272) = *(v41 + 384);
  __swift_allocate_boxed_opaque_existential_0((v41 + 248));
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v50();
  sub_1928F9340(v41 + 248, v41 + 280, &unk_1EAE131B0, &qword_192FBD860);
  *(v41 + 136) = 0u;
  *(v41 + 152) = 0u;
  sub_19286D180(v41 + 280, v41 + 136);
  if ((OUTLINED_FUNCTION_127_1() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v42 = v70;
  }

  v52 = *(v42 + 16);
  v51 = *(v42 + 24);
  if (v52 >= v51 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v51);
    sub_19287AEE0();
    v42 = v71;
  }

  v53 = *(v41 + 600);
  v54 = *(v41 + 552);
  OUTLINED_FUNCTION_123_1();
  *(v42 + 16) = v52 + 1;
  OUTLINED_FUNCTION_16_20(v42 + 40 * v52);
  a28 = v42;
  sub_19292E1F0(v41 + 248, &unk_1EAE131B0, &qword_192FBD860);
  v55._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
  OUTLINED_FUNCTION_2_37();
  sub_192C83188(&a28, v43, v56, v57, sub_192BB97CC);

  (*(v44 + 8))(a10, v40);
  v58 = *(v41 + 552);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_31_0();
  v59 = sub_192F9679C();
  v60 = OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_22_19(v60);

  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_68_6();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_192C83188(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v10 = *a1;
  memcpy(__dst, v8, 0x88uLL);
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6DE070);
  }

  v11 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_192FBCD90;
  v38[3] = a2;
  OUTLINED_FUNCTION_99();
  v38[0] = swift_allocObject();
  memcpy((v38[0] + 16), v8, 0x88uLL);
  v14 = __dst[5];
  v13 = __dst[6];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v16 = OUTLINED_FUNCTION_90(v15);
  *(v16 + 16) = xmmword_192FBCD50;
  sub_19286C588(v38, v37);
  __swift_project_boxed_opaque_existential_0(v37, v37[3]);
  swift_getDynamicType();
  OUTLINED_FUNCTION_28_2();
  (*(v17 + 16))(&v33, __dst, a2);

  v33 = sub_192F979EC();
  v34 = v18;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x193B10CE0](v14, v13);

  OUTLINED_FUNCTION_26_2();
  v19 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69E6158];
  __swift_destroy_boxed_opaque_existential_0(v37);
  *(v16 + 48) = 0u;
  *(v16 + 32) = 0u;
  sub_19286D180(&v33, v16 + 32);
  *(v16 + 64) = 0;
  *(v12 + 32) = v16;
  __swift_destroy_boxed_opaque_existential_0(v38);
  *(v12 + 40) = v10;

  v21 = a3(v20);
  if (os_log_type_enabled(v11, v21))
  {
    v22 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v23 = byte_1ED6DE5D8;
    v24 = OUTLINED_FUNCTION_19(a4);
    *(v24 + 16) = v23;
    v33 = v12;
    v34 = a5;
    v35 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v25 = sub_192F9674C();
    v27 = v26;

    objc_autoreleasePoolPop(v22);
    v28 = objc_autoreleasePoolPush();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v30 = OUTLINED_FUNCTION_90(v29);
    *(v30 + 16) = xmmword_192FBCD50;
    *(v30 + 56) = v19;
    *(v30 + 64) = sub_1928FDB30();
    *(v30 + 32) = v25;
    *(v30 + 40) = v27;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v11, v21, v30);

    objc_autoreleasePoolPop(v28);
  }
}

uint64_t sub_192C834D0()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v1[12] = v2;
  v1[13] = v3;
  v4 = v2;
  v5 = v3;
  v1[10] = v4;
  v1[11] = v5;
  v6 = swift_task_alloc();
  v1[14] = v6;
  *v6 = v1;
  v6[1] = sub_192C83584;

  return sub_192C787C8((v1 + 2));
}

uint64_t sub_192C83584()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8367C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[12];
  v2 = v0[13];
  if (v0[3] != 1)
  {
    sub_19292E1F0((v0 + 2), &qword_1EAE148C0, &qword_192FC8920);
  }

  OUTLINED_FUNCTION_7();

  return v3();
}

uint64_t sub_192C83728()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v1[2] = v2;
  v1[3] = v3;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v1[4] = v6;
  *v6 = v1;
  v6[1] = sub_192C837E8;

  return DeveloperSilentAuthTokenConfiguration.getEndpointURL()();
}

uint64_t sub_192C837E8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v3[5] = v0;

  v7 = v3[2];
  v8 = v3[3];

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v12();
  }
}

uint64_t sub_192C83930(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1744) = v4;
  *(v5 + 1736) = a4;
  *(v5 + 1728) = a3;
  *(v5 + 1984) = a2;
  *(v5 + 1720) = a1;
  v6 = sub_192F95A8C();
  *(v5 + 1752) = v6;
  *(v5 + 1760) = *(v6 - 8);
  *(v5 + 1768) = swift_task_alloc();
  memcpy((v5 + 488), v4, 0x88uLL);

  return MEMORY[0x1EEE6DFA0](sub_192C83A10, 0, 0);
}

uint64_t sub_192C83A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_110_2();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_82_3();
  a32 = v34;
  memcpy(&a9, *(v34 + 1744), 0x88uLL);
  OUTLINED_FUNCTION_46_8();
  if (sub_192C859A0())
  {
    v37 = *(v34 + 1768);
    v38 = *(v34 + 1760);
    v39 = [objc_allocWithZone(AMSURLSession) init];
    *(v34 + 1776) = v39;
    [v39 setDelegate_];
    sub_192874CD0(0, &unk_1EAE13AD0, off_1E73B1188);
    *(v34 + 1784) = *(v38 + 16);
    *(v34 + 1792) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    OUTLINED_FUNCTION_53_0();
    v40();
    v41 = sub_192C927B0(v37);
    *(v34 + 1800) = v41;
    v42 = v41;
    OUTLINED_FUNCTION_48();
    v43 = sub_192F9679C();

    [v42 setHTTPMethod_];

    OUTLINED_FUNCTION_80_5((v34 + 80));
    v44 = swift_task_alloc();
    *(v34 + 1808) = v44;
    *v44 = v34;
    v44[1] = sub_192C83C40;
    OUTLINED_FUNCTION_51(*(v34 + 1736));
    OUTLINED_FUNCTION_81_6();

    return sub_192C8207C(v45);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_85_3();
    v49 = OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_65_0();
    AMSError(v50, v51, v52, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_81_6();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_192C83C40()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1816) = v4;
  *(v2 + 1824) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C83D44()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6DE070);
  }

  v1 = v0[227];
  v2 = v0[217];
  v3 = qword_1ED6DE078;
  v0[229] = qword_1ED6DE078;
  v0[230] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_36_0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_192FBCD40;
  v0[200] = v2;
  OUTLINED_FUNCTION_99();
  v5 = swift_allocObject();
  v0[197] = v5;
  OUTLINED_FUNCTION_80_5((v5 + 16));
  v6 = v0[66];
  v0[231] = v6;
  v7 = v0[67];
  v0[232] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v0[233] = v8;
  v9 = OUTLINED_FUNCTION_90(v8);
  *(v9 + 16) = xmmword_192FBCD50;
  sub_19286C588((v0 + 197), (v0 + 169));

  __swift_project_boxed_opaque_existential_0(v0 + 169, v0[172]);
  swift_getDynamicType();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_28_2();
  v11 = *(v10 + 16);
  v0[234] = v11;
  v0[235] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v0 + 78, v0 + 61, v2);
  v44 = sub_192F979EC();
  v45 = v12;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x193B10CE0](v6, v7);

  OUTLINED_FUNCTION_26_2();
  v13 = MEMORY[0x1E69E6158];
  v0[160] = MEMORY[0x1E69E6158];
  v0[157] = v44;
  v0[158] = v45;
  __swift_destroy_boxed_opaque_existential_0(v0 + 169);
  *(v9 + 48) = 0u;
  *(v9 + 32) = 0u;
  sub_19286D180((v0 + 157), v9 + 32);
  *(v9 + 64) = 0;
  *(v4 + 32) = v9;
  __swift_destroy_boxed_opaque_existential_0(v0 + 197);
  v14._object = 0x80000001930202B0;
  v14._countAndFlagsBits = 0xD00000000000003ELL;
  LogInterpolation.init(stringLiteral:)(v14);
  v0[156] = sub_192874CD0(0, &qword_1EAE12340, 0x1E6959A28);
  v0[153] = v1;
  v15 = v1;
  static LogInterpolation.traceableSensitive(_:)((v0 + 153), (v4 + 48));
  sub_19292E1F0((v0 + 153), &unk_1EAE131B0, &qword_192FBD860);
  v16 = sub_192F96E7C();
  if (os_log_type_enabled(v3, v16))
  {
    v17 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v18 = byte_1ED6DE5D8;
    v19 = OUTLINED_FUNCTION_19(&unk_1F06FA868);
    *(v19 + 16) = v18;
    v0[211] = v4;
    v0[212] = sub_192BB97CC;
    v0[213] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    v20 = sub_1928FD924();
    v23 = OUTLINED_FUNCTION_106(v20, v21, v22, v20);
    v25 = v24;

    objc_autoreleasePoolPop(v17);
    v26 = objc_autoreleasePoolPush();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v28 = OUTLINED_FUNCTION_90(v27);
    *(v28 + 16) = xmmword_192FBCD50;
    *(v28 + 56) = v13;
    *(v28 + 64) = sub_1928FDB30();
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v3, v16, v28);

    objc_autoreleasePoolPop(v26);
  }

  v29 = v0[227];
  v30 = v0[216];

  v31 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag_];
  v0[236] = v31;
  [v31 setAccount_];
  [v31 setRequestEncoding_];
  v32 = v0[225];
  if (v30)
  {
    v33 = v32;
    sub_192F9667C();
    v34 = v0[225];
  }

  else
  {
    v34 = v32;
  }

  v35 = v0[222];
  OUTLINED_FUNCTION_67_0();
  v38 = [v36 v37];
  v0[237] = v38;
  swift_unknownObjectRelease();

  v39 = [v35 dataTaskPromiseWithRequestPromise_];
  v0[238] = v39;
  v0[2] = v0;
  v0[7] = v0 + 214;
  v0[3] = sub_192C842D0;
  v40 = swift_continuation_init();
  v0[136] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13AE0, &unk_192FC2320);
  v0[133] = v40;
  v0[129] = MEMORY[0x1E69E9820];
  v0[130] = 1107296256;
  v0[131] = sub_192C92848;
  v0[132] = &block_descriptor_53;
  [v39 resultWithCompletion_];
  OUTLINED_FUNCTION_68();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_192C842D0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 1912) = v4;
  if (v4)
  {
    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C843DC()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[238];
  v0[240] = v0[214];

  OUTLINED_FUNCTION_80_5(v0 + 95);
  v2 = swift_task_alloc();
  v0[241] = v2;
  *v2 = v0;
  v2[1] = sub_192C84484;
  OUTLINED_FUNCTION_51(v0[217]);

  return sub_192C834D0();
}

uint64_t sub_192C84484()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1936) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    *(v5 + 1944) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C84598()
{
  v134 = v0;
  if (*(v0 + 1944) <= 0.0 || (v4 = OUTLINED_FUNCTION_100_3(), *(v0 + 1096) = v5, *(v0 + 1104) = *v6, *(v0 + 1120) = v4, *(v0 + 1136) = v7, v8 = sub_192F9679C(), v9 = [objc_opt_self() processIsEntitledToUse_], v8, !v9))
  {
LABEL_10:
    v19 = *(v0 + 1872);
    v20 = *(v0 + 1864);
    v21 = *(v0 + 1856);
    v22 = *(v0 + 1848);
    v128 = *(v0 + 1792);
    oslog = *(v0 + 1832);
    v23 = *(v0 + 1752);
    v24 = *(v0 + 1736);
    v124 = *(v0 + 1720);
    v126 = *(v0 + 1784);
    OUTLINED_FUNCTION_36_0();
    v25 = swift_allocObject();
    v121 = xmmword_192FBCD40;
    *(v25 + 16) = xmmword_192FBCD40;
    *(v0 + 1216) = v24;
    OUTLINED_FUNCTION_99();
    v26 = swift_allocObject();
    *(v0 + 1192) = v26;
    OUTLINED_FUNCTION_80_5((v26 + 16));
    v27 = OUTLINED_FUNCTION_90(v20);
    *(v27 + 16) = xmmword_192FBCD50;
    sub_19286C588(v0 + 1192, v0 + 1288);
    __swift_project_boxed_opaque_existential_0((v0 + 1288), *(v0 + 1312));
    swift_getDynamicType();
    v19(v0 + 352, v0 + 488, v24);
    v132 = sub_192F979EC();
    v133 = v28;
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x193B10CE0](v22, v21);

    OUTLINED_FUNCTION_26_2();
    v29 = v132;
    v30 = v133;
    v31 = MEMORY[0x1E69E6158];
    *(v0 + 1344) = MEMORY[0x1E69E6158];
    *(v0 + 1320) = v29;
    *(v0 + 1328) = v30;
    __swift_destroy_boxed_opaque_existential_0((v0 + 1288));
    *(v27 + 48) = 0u;
    *(v27 + 32) = 0u;
    sub_19286D180(v0 + 1320, v27 + 32);
    *(v27 + 64) = 0;
    *(v25 + 32) = v27;
    __swift_destroy_boxed_opaque_existential_0((v0 + 1192));
    v32._countAndFlagsBits = 0xD00000000000001FLL;
    v32._object = 0x80000001930202F0;
    LogInterpolation.init(stringLiteral:)(v32);
    *(v0 + 1408) = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1384));
    v126(boxed_opaque_existential_0, v124, v23);
    static LogInterpolation.traceableSensitive(_:)(v0 + 1384, (v25 + 48));
    sub_19292E1F0(v0 + 1384, &unk_1EAE131B0, &qword_192FBD860);
    v34 = sub_192F96E7C();
    if (os_log_type_enabled(oslog, v34))
    {
      v35 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      v36 = byte_1ED6DE5D8;
      v37 = OUTLINED_FUNCTION_19(&unk_1F06FA840);
      *(v37 + 16) = v36;
      *(v0 + 1664) = v25;
      *(v0 + 1672) = sub_192BB97CC;
      *(v0 + 1680) = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      v38 = sub_1928FD924();
      v41 = OUTLINED_FUNCTION_106(v38, v39, v40, v38);
      v43 = v42;

      objc_autoreleasePoolPop(v35);
      v44 = objc_autoreleasePoolPush();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v46 = OUTLINED_FUNCTION_90(v45);
      OUTLINED_FUNCTION_90_1(v46, v47, v48, v49, v50, v51, v52, v53, v54, 3, 6, v124, v126, v128, oslog, v55);
      *(v56 + 56) = v31;
      *(v37 + 64) = sub_1928FDB30();
      *(v37 + 32) = v41;
      *(v37 + 40) = v43;
      OUTLINED_FUNCTION_104_1("%{public}@", v57, v58, &dword_192869000);

      objc_autoreleasePoolPop(v44);
    }

    v59 = *(v0 + 1920);

    if ([v59 object])
    {
      v60 = *(v0 + 1872);
      v61 = *(v0 + 1864);
      v62 = *(v0 + 1856);
      v63 = *(v0 + 1848);
      v64 = *(v0 + 1832);
      v65 = *(v0 + 1736);
      sub_192F9715C();
      swift_unknownObjectRelease();
      sub_1928FA5CC(v0 + 1448);
      OUTLINED_FUNCTION_36_0();
      v66 = swift_allocObject();
      *(v66 + 16) = v121;
      *(v0 + 1504) = v65;
      OUTLINED_FUNCTION_99();
      v67 = swift_allocObject();
      *(v0 + 1480) = v67;
      OUTLINED_FUNCTION_80_5((v67 + 16));
      v68 = OUTLINED_FUNCTION_90(v61);
      OUTLINED_FUNCTION_90_1(v68, v69, v70, v71, v72, v73, v74, v75, v76, v121, *(&v121 + 1), v124, v126, v128, oslog, v77);
      sub_19286C588(v0 + 1480, v0 + 1512);
      __swift_project_boxed_opaque_existential_0((v0 + 1512), *(v0 + 1536));
      swift_getDynamicType();
      v60(v0 + 216, v0 + 488, v65);
      v78 = MEMORY[0x1E69E6158];
      v132 = sub_192F979EC();
      v133 = v79;
      OUTLINED_FUNCTION_10_1();
      MEMORY[0x193B10CE0](v63, v62);

      OUTLINED_FUNCTION_26_2();
      v80 = v132;
      v81 = v133;
      *(v0 + 1568) = v78;
      *(v0 + 1544) = v80;
      *(v0 + 1552) = v81;
      __swift_destroy_boxed_opaque_existential_0((v0 + 1512));
      *(v61 + 48) = 0u;
      *(v61 + 32) = 0u;
      sub_19286D180(v0 + 1544, v61 + 32);
      *(v61 + 64) = 0;
      *(v66 + 32) = v61;
      __swift_destroy_boxed_opaque_existential_0((v0 + 1480));
      v82._object = 0x8000000193020310;
      v82._countAndFlagsBits = 0xD000000000000015;
      LogInterpolation.init(stringLiteral:)(v82);
      sub_19286C588(v0 + 1416, v0 + 1608);
      static LogInterpolation.traceableSensitive(_:)(v0 + 1608, (v66 + 48));
      sub_19292E1F0(v0 + 1608, &unk_1EAE131B0, &qword_192FBD860);
      v83 = sub_192F96E7C();
      if (os_log_type_enabled(v64, v83))
      {
        v84 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
        }

        v85 = byte_1ED6DE5D8;
        v86 = OUTLINED_FUNCTION_19(&unk_1F06FA818);
        *(v86 + 16) = v85;
        *(v0 + 1640) = v66;
        *(v0 + 1648) = sub_192BB97CC;
        *(v0 + 1656) = v86;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
        v87 = sub_1928FD924();
        v90 = OUTLINED_FUNCTION_106(v87, v88, v89, v87);
        v92 = v91;

        objc_autoreleasePoolPop(v84);
        v93 = objc_autoreleasePoolPush();
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
        v95 = OUTLINED_FUNCTION_90(v94);
        OUTLINED_FUNCTION_90_1(v95, v96, v97, v98, v99, v100, v101, v102, v103, v122, v123, v125, v127, v129, osloga, v104);
        *(v105 + 56) = v78;
        *(v86 + 64) = sub_1928FDB30();
        *(v86 + 32) = v90;
        *(v86 + 40) = v92;
        OUTLINED_FUNCTION_104_1("%{public}@", v106, v107, &dword_192869000);

        objc_autoreleasePoolPop(v93);
      }

      v108 = *(v0 + 1896);
      v109 = *(v0 + 1888);
      v110 = *(v0 + 1816);
      v111 = *(v0 + 1800);

      __swift_destroy_boxed_opaque_existential_0((v0 + 1416));
    }

    else
    {
      v112 = *(v0 + 1896);
      v113 = *(v0 + 1888);
      v114 = *(v0 + 1816);
      v115 = *(v0 + 1800);
      v116 = *(v0 + 1776);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_77_6();

    __asm { BRAA            X2, X16 }
  }

  v10 = *(v0 + 1936);
  v11 = sub_192C88278(*(v0 + 1816), *(v0 + 512), *(v0 + 520));
  if (!v10)
  {
    v18 = v11;
    [v11 deleteData];

    goto LABEL_10;
  }

  v12 = *(v0 + 1920);
  swift_bridgeObjectRelease_n();

  *(v0 + 1952) = v10;
  OUTLINED_FUNCTION_80_5(&v132);
  if ((sub_192C85A18(v10) & 1) == 0)
  {
    v13 = *(v0 + 1736);
    OUTLINED_FUNCTION_80_5(&v132);
    v14 = sub_192C85724(v10);
    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_23_17(v14);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_77_6();

      __asm { BRAA            X1, X16 }
    }
  }

  OUTLINED_FUNCTION_80_5((v0 + 896));
  v15 = swift_task_alloc();
  *(v0 + 1960) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_13_17(v15);
  OUTLINED_FUNCTION_77_6();

  return sub_192C834D0();
}

uint64_t sub_192C84DB8()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 1776);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192C84E24()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1968) = v0;

  if (!v0)
  {
    *(v5 + 1976) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C84F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  if (*(v14 + 1976) > 0.0 && (v19 = OUTLINED_FUNCTION_100_3(), *(v14 + 1144) = v20, *(v14 + 1152) = *v21, *(v14 + 1168) = v19, *(v14 + 1184) = v22, v13 = sub_192F9679C(), v12 = [objc_opt_self() processIsEntitledToUse_], v13, v12))
  {
    v23 = *(v14 + 1968);
    v24 = sub_192C88278(*(v14 + 1816), *(v14 + 512), *(v14 + 520));
    v25 = v23;
    v26 = *(v14 + 1952);
    v27 = *(v14 + 1896);
    v28 = *(v14 + 1888);
    v29 = *(v14 + 1816);
    v30 = *(v14 + 1800);
    v31 = *(v14 + 1776);
    if (v25)
    {
    }

    else
    {
      v41 = v24;
      [v24 deleteData];

      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_17(v18);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_31();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_192C85294()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1896);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1776);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

void DeveloperSilentAuthTokenResult.init(withDictionary:account:bundleId:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_192C86184(a2);
  if (v5)
  {

    return;
  }

  v54 = a2;
  *a5 = v11;
  *(a5 + 8) = 0;
  v13 = (a1 + 64);
  v12 = *(a1 + 64);
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v47 = a5;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (1)
  {
    if (!v16)
    {
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v17)
        {

          goto LABEL_18;
        }

        v16 = v13[v19];
        ++v18;
        if (v16)
        {
          v18 = v19;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_11:
    v20 = __clz(__rbit64(v16)) | (v18 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    sub_19286C588(*(a1 + 56) + 32 * v20, &v52);
    v50 = v22;
    v51 = v23;
    if (v22 == 0x65736E6F43736168 && v23 == 0xEC0000006465746ELL)
    {
      break;
    }

    v16 &= v16 - 1;
    v25 = sub_192F9775C();

    sub_19292E1F0(&v50, &unk_1EAE14940, &unk_192FC84F0);
    if (v25)
    {
      goto LABEL_21;
    }
  }

  sub_19292E1F0(&v50, &unk_1EAE14940, &unk_192FC84F0);
LABEL_21:

  v31 = sub_192952700(0x65736E6F43736168, 0xEC0000006465746ELL, a1);
  v16 = v47;
  if (!v53)
  {
    sub_19292E1F0(&v50, &unk_1EAE131B0, &qword_192FBD860);
LABEL_18:
    v13 = v54;
    goto LABEL_19;
  }

  v36 = OUTLINED_FUNCTION_128_0(v31, v32, v33, MEMORY[0x1E69E6370], v34, v35);
  v13 = v54;
  if (!v36)
  {
LABEL_19:
    v26 = sub_192F9679C();
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_192F972BC();
    MEMORY[0x193B10CE0](0xD000000000000056, 0x800000019301FC70);
    v27 = sub_192F966AC();
    v29 = v28;

    MEMORY[0x193B10CE0](v27, v29);

    v30 = sub_192F9679C();

    AMSError(2, v26, v30, 0);

    swift_willThrow();

    return;
  }

  v37 = 1;
  if (!v48)
  {
    v37 = 2;
  }

  v47[4] = v37;
  v38 = OUTLINED_FUNCTION_120_1();
  sub_192952700(v38, v39, a1);

  if (v53)
  {
    if (OUTLINED_FUNCTION_128_0(v40, v41, v42, MEMORY[0x1E69E6158], v43, v44))
    {
      if (sub_192F968CC())
      {
        v47[5] = v48;
        v47[6] = v49;
        goto LABEL_34;
      }

LABEL_32:
    }
  }

  else
  {
    sub_19292E1F0(&v50, &unk_1EAE131B0, &qword_192FBD860);
  }

  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
LABEL_34:
  v45 = *(type metadata accessor for DeveloperSilentAuthTokenResult(0) + 32);
  sub_192F95CEC();

  v46 = sub_192F95CFC();
  __swift_storeEnumTagSinglePayload(v16 + v45, 0, 1, v46);
}

uint64_t sub_192C85724(void *a1)
{
  v8[0] = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    v3 = v9;
  }

  else
  {
    v3 = 0;
  }

  v8[0] = a1;
  v4 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8[0] = v9;
  sub_192C872E0(&qword_1EAE120F0, type metadata accessor for AMSError);
  sub_192F9588C();
  if (v9 != 301)
  {

LABEL_11:
    return 0;
  }

  v9 = 301;
  v5 = sub_192F958AC();
  sub_192952700(0x7574617453534D41, 0xED000065646F4373, v5);

  if (v8[3])
  {
    if ((swift_dynamicCast() & 1) != 0 && v7 == 404)
    {
      return 1;
    }
  }

  else
  {
    sub_19292E1F0(v8, &unk_1EAE131B0, &qword_192FBD860);
  }

  return 0;
}

uint64_t DeveloperSilentAuthTokenResult.init(withConsent:account:bundleId:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_192C86184(a2);
  if (v5)
  {
  }

  else
  {
    *a5 = v11;
    *(a5 + 8) = 0;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;
    *(a5 + 32) = a1;
    v13 = type metadata accessor for DeveloperSilentAuthTokenResult(0);
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    v14 = *(v13 + 32);
    sub_192F95CEC();

    v15 = sub_192F95CFC();
    return __swift_storeEnumTagSinglePayload(a5 + v14, 0, 1, v15);
  }
}

uint64_t sub_192C859A0()
{
  v2[3] = &type metadata for FlagKeys;
  v2[4] = sub_1929247E4();
  LOBYTE(v2[0]) = 22;
  v0 = sub_192F95E6C();
  __swift_destroy_boxed_opaque_existential_0(v2);
  if (v0)
  {
    return 1;
  }

  else
  {
    return [objc_opt_self() isRunningUnitTests];
  }
}

uint64_t sub_192C85A18(void *a1)
{
  v5[0] = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    v5[0] = v6;
    sub_192C872E0(&qword_1EAE120F0, type metadata accessor for AMSError);
    sub_192F9588C();
    if (v6 == 301)
    {
      v6 = 301;
      v2 = sub_192F958AC();
      sub_192952700(0x7574617453534D41, 0xED000065646F4373, v2);

      if (v5[3])
      {
        if ((swift_dynamicCast() & 1) != 0 && v4 == 403)
        {
          return 1;
        }
      }

      else
      {
        sub_19292E1F0(v5, &unk_1EAE131B0, &qword_192FBD860);
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_192C85BA4()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v1[2] = v2;
  v1[3] = v3;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v1[4] = v6;
  *v6 = v1;
  v6[1] = sub_192C85C64;

  return DeveloperSilentAuthTokenConfiguration.consentEndpointURL()();
}

uint64_t sub_192C85C64()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v3[5] = v0;

  v7 = v3[2];
  v8 = v3[3];

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v12();
  }
}

uint64_t sub_192C85D88()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v1[2] = v2;
  v1[3] = v3;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  v1[4] = v6;
  *v6 = v1;
  v6[1] = sub_192C85C64;

  return DeveloperSilentAuthTokenConfiguration.updateEndpointURL()();
}

uint64_t sub_192C85E4C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6D72657465646E55;
    case 1:
      return 0x65746E65736E6F43;
    case 2:
      return 0x64656E696C636544;
  }

  v2 = sub_192F9771C();
  MEMORY[0x193B10CE0](v2);

  return 0x206E776F6E6B6E55;
}

uint64_t DeveloperSilentAuthTokenResult.accountDSID.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DeveloperSilentAuthTokenResult.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeveloperSilentAuthTokenResult.bundleId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DeveloperSilentAuthTokenResult.token.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

id sub_192C86184(void *a1)
{
  v1 = [a1 ams_DSID];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 longLongValue];

    return v3;
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_120_1();
    v5 = sub_192F9679C();
    OUTLINED_FUNCTION_44();
    v6 = sub_192F9679C();
    AMSError(2, v5, v6, 0);

    return swift_willThrow();
  }
}

uint64_t DeveloperSilentAuthTokenResult.description.getter()
{
  sub_192F972BC();
  MEMORY[0x193B10CE0](0xD000000000000031, 0x800000019301FCD0);
  v1 = sub_192C85E4C(v0[4]);
  MEMORY[0x193B10CE0](v1);

  OUTLINED_FUNCTION_31_0();
  MEMORY[0x193B10CE0](0xD000000000000010);
  if (v0[6])
  {
    v2 = v0[5];
    v3 = v0[6];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x193B10CE0](v2, v3);

  MEMORY[0x193B10CE0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_192C863B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E65736E6F63 && a2 == 0xED00007375746174;
  if (v4 || (sub_192F9775C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_192F9775C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
      if (v7 || (sub_192F9775C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x44746E756F636361 && a2 == 0xEB00000000444953;
        if (v8 || (sub_192F9775C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_192F9775C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_192C8655C(char a1)
{
  result = 0x53746E65736E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E656B6F74;
      break;
    case 2:
      result = 0x64657461657263;
      break;
    case 3:
      result = 0x44746E756F636361;
      break;
    case 4:
      result = 0x6449656C646E7562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192C86614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192C863B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192C8663C(uint64_t a1)
{
  v2 = sub_192C8728C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192C86678(uint64_t a1)
{
  v2 = sub_192C8728C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeveloperSilentAuthTokenResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v27 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14950, &qword_192FC8CA0);
  OUTLINED_FUNCTION_4_0();
  v27[1] = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = type metadata accessor for DeveloperSilentAuthTokenResult(0);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_192C8728C();
  sub_192F9797C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v17 = v7;
    v18 = v27[0];
    v34 = 3;
    *v15 = sub_192F975FC();
    v15[8] = 0;
    v33 = 4;
    *(v15 + 2) = sub_192F975AC();
    *(v15 + 3) = v19;
    type metadata accessor for DeveloperSilentAuthTokenConsentStatus(0);
    v32 = 0;
    OUTLINED_FUNCTION_43_12();
    sub_192C872E0(v20, v21);
    sub_192F975EC();
    *(v15 + 4) = v29;
    v31 = 1;
    *(v15 + 5) = sub_192F975AC();
    *(v15 + 6) = v22;
    v23 = sub_192F95CFC();
    v30 = 2;
    sub_192C872E0(&unk_1ED6DDCF0, MEMORY[0x1E6969530]);
    sub_192F975EC();
    v24 = OUTLINED_FUNCTION_52_7();
    v25(v24);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v23);
    sub_192C2ACE8(v17, &v15[*(v11 + 32)]);
    sub_192C87324(v15, v18);
    __swift_destroy_boxed_opaque_existential_0(v28);
    return sub_192C87388(v15);
  }
}

uint64_t DeveloperSilentAuthTokenResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14970, &qword_192FC8CA8);
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C8728C();
  sub_192F9799C();
  v12 = *(v3 + 8);
  *&v16 = *v3;
  BYTE8(v16) = v12;
  v17 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14978, &unk_192FC8CB0);
  sub_192C873E4(&unk_1EAE14980, &qword_1EAE14978, &unk_192FC8CB0);
  OUTLINED_FUNCTION_53_8();
  OUTLINED_FUNCTION_11_1();
  sub_192F976CC();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v17 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE148C8, &qword_192FC8930);
    sub_192C873E4(&qword_1EAE14990, &qword_1EAE148C8, &qword_192FC8930);
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_11_1();
    sub_192F976CC();
    *&v16 = *(v3 + 32);
    v17 = 0;
    type metadata accessor for DeveloperSilentAuthTokenConsentStatus(0);
    OUTLINED_FUNCTION_43_12();
    sub_192C872E0(v13, v14);
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_11_1();
    sub_192F976CC();
    LOBYTE(v16) = 1;
    OUTLINED_FUNCTION_11_1();
    sub_192F9764C();
    type metadata accessor for DeveloperSilentAuthTokenResult(0);
    LOBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
    sub_192C8744C();
    OUTLINED_FUNCTION_11_1();
    sub_192F976CC();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_192C86D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_192C86D98, 0, 0);
}

uint64_t sub_192C86D98()
{
  OUTLINED_FUNCTION_3();
  v0[4] = [objc_allocWithZone(AMSAuthenticateTask) initWithRequest:v0[2] bag:*(v0[3] + OBJC_IVAR____TtC18AppleMediaServicesP33_68239C40601534D7947471707625281632DeveloperSilentAuthTokenDelegate_bag)];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_192C86E5C;

  return AMSAuthenticateTask.performAuthentication()();
}

uint64_t sub_192C86E5C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C86F68()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_192C86FC8()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192C870F8(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_192C4BFB4;

  return sub_192C86D78(v10, v11, v12);
}

uint64_t type metadata accessor for DeveloperSilentAuthTokenResult(uint64_t a1)
{
  result = qword_1EAE14A58;
  if (!qword_1EAE14A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_192C8728C()
{
  result = qword_1EAE14958;
  if (!qword_1EAE14958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14958);
  }

  return result;
}

uint64_t sub_192C872E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_96_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_192C87324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperSilentAuthTokenResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192C87388(uint64_t a1)
{
  v2 = type metadata accessor for DeveloperSilentAuthTokenResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192C873E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_192C8744C()
{
  result = qword_1EAE149A0;
  if (!qword_1EAE149A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE12E10, &qword_192FBCDA0);
    sub_192C872E0(&qword_1ED6DE028, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE149A0);
  }

  return result;
}

uint64_t sub_192C87550(uint64_t a1)
{
  *(a1 + 8) = sub_192C872E0(&qword_1EAE149C0, type metadata accessor for DeveloperSilentAuthTokenResult);
  result = sub_192C872E0(qword_1EAE149C8, type metadata accessor for DeveloperSilentAuthTokenResult);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_192C875D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_192C87618(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_192C87658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192C877E0(uint64_t a1)
{
  sub_19292DA4C(319, &qword_1EAE14A68, MEMORY[0x1E69E7360]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19292DA4C(319, qword_1ED6DE750, MEMORY[0x1E69E6158]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      type metadata accessor for DeveloperSilentAuthTokenConsentStatus(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1929241E4(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for DeveloperSilentAuthTokenResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192C879B0()
{
  result = qword_1EAE14A70;
  if (!qword_1EAE14A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14A70);
  }

  return result;
}

unint64_t sub_192C87A08()
{
  result = qword_1EAE14A78;
  if (!qword_1EAE14A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14A78);
  }

  return result;
}

unint64_t sub_192C87A60()
{
  result = qword_1EAE14A80;
  if (!qword_1EAE14A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14A80);
  }

  return result;
}

uint64_t sub_192C87AB4()
{
  OUTLINED_FUNCTION_65();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C44;
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_67_0();

  return v2();
}

uint64_t sub_192C87BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeveloperSilentAuthTokenResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_192C87C1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_192C87CE8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_192C87DB4(_BYTE *result, int a2, int a3)
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

void *OUTLINED_FUNCTION_78_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 + 296);

  return memcpy(va, v11, 0x88uLL);
}

id OUTLINED_FUNCTION_103_3(void *a1)
{

  return AMSError(2, v1, v2, a1);
}

uint64_t *OUTLINED_FUNCTION_107_2()
{
  v0[27] = v0[33];

  return __swift_allocate_boxed_opaque_existential_0(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_128_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_192C87FB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192C88058;

  return sub_192CD7300();
}

uint64_t sub_192C88058()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_192C88174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 32);
  if (v11)
  {
    v12 = sub_19295466C(*(v10 + 32));
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        goto LABEL_14;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193B116C0](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v14 ams:*(v10 + 16) isActiveForMediaType:?])
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_85();

    v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }
}

uint64_t sub_192C88278(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_192F967BC();
  }

  OUTLINED_FUNCTION_31_0();
  v5 = sub_192F9679C();
  OUTLINED_FUNCTION_44();
  v6 = sub_192F9679C();
  AMSError(113, v5, v6, 0);

  return swift_willThrow();
}

uint64_t sub_192C8843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_135();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192C88470()
{
  OUTLINED_FUNCTION_178();
  v1 = sub_192C88278(*(v0 + 40), *(v0 + 24), *(v0 + 32));
  *(v0 + 56) = v1;
  v2 = v1;
  *(v0 + 64) = sub_192C1B7DC(v1);
  *(v0 + 72) = v3;
  if (v3 >> 60 == 15)
  {
    v4 = OUTLINED_FUNCTION_113_1(0x6C75736552206F4ELL);
    OUTLINED_FUNCTION_44();
    v5 = sub_192F9679C();
    OUTLINED_FUNCTION_68_7();
    AMSError(v6, v7, v8, 0);

    swift_willThrow();
    OUTLINED_FUNCTION_7_27();

    return v11();
  }

  else
  {
    sub_192F9543C();
    swift_allocObject();
    *(v0 + 80) = sub_192F9542C();
    type metadata accessor for DeveloperSilentAuthTokenResult(0);
    OUTLINED_FUNCTION_1_43();
    sub_192C9479C(v9, v10);
    OUTLINED_FUNCTION_51_0();
    sub_192F9541C();
    OUTLINED_FUNCTION_15_19(&unk_192FC9568);
    v16 = v13;
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_192C88684;
    v15 = OUTLINED_FUNCTION_51(*(v0 + 16));

    return v16(v15);
  }
}

uint64_t sub_192C88684()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3 & 1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C88790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 72);
  if (*(v10 + 104) == 1)
  {
    v12 = *(v10 + 64);

    sub_192915F68(v12, v11);
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v14 = *(v10 + 56);
    v13 = *(v10 + 64);
    v15 = *(v10 + 16);
    sub_192C76D48();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    sub_192915F68(v13, v11);
    sub_192C87388(v15);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_85();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_192C88878()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  sub_192915F68(v2, v1);
  sub_192C87388(v3);
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_192C88900(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10, &qword_192FBCDA0);
  v2[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_192C889C8;

  return sub_192C89010();
}

uint64_t sub_192C889C8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 80) = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8(0);
  }

  else
  {
    OUTLINED_FUNCTION_27_3();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_192C88AFC()
{
  OUTLINED_FUNCTION_5();
  if (*(v1 + 80) == 0.0)
  {
    OUTLINED_FUNCTION_63_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v3 = OUTLINED_FUNCTION_90(v2);
    v4 = MEMORY[0x1E69E6158];
    *(v3 + 16) = xmmword_192FBCD50;
    *(v1 + 16) = 0xD000000000000025;
    *(v1 + 40) = v4;
    *(v1 + 24) = v0;
    OUTLINED_FUNCTION_39_12(v1 + 16);
    *(v3 + 64) = 0;
    sub_192C892B8(v3);

    v5 = 0;
  }

  else
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 48);
    v8 = type metadata accessor for DeveloperSilentAuthTokenResult(0);
    sub_1928F9340(v7 + *(v8 + 32), v6, &qword_1EAE12E10, &qword_192FBCDA0);
    v9 = sub_192F95CFC();
    OUTLINED_FUNCTION_111_2();
    result = __swift_getEnumTagSinglePayload(v10, v11, v12);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v14 = *(v1 + 80);
    v15 = *(v1 + 64);
    sub_192F95C6C();
    v5 = fabs(v16) <= v14;
    OUTLINED_FUNCTION_30_2();
    (*(v17 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_40();

  return v18(v5);
}

uint64_t sub_192C88C80()
{
  OUTLINED_FUNCTION_3();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_192F9545C();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_192C88D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  v15 = *(v14 + 24);
  v16 = *(v15 + 24);
  if (v16)
  {
    v17 = sub_192C88278(*(v14 + 32), *(v15 + 16), v16);
    v33 = *(v14 + 24);
    sub_192F9549C();
    swift_allocObject();
    sub_192F9548C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14818, qword_192FC86F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_192FBCD50;
    sub_192F9544C();
    *(v14 + 16) = v18;
    sub_192C9479C(&qword_1EAE14820, MEMORY[0x1E6967F78]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14828, &qword_192FC9580);
    sub_1928FDAEC(qword_1EAE14830, &qword_1EAE14828, &qword_192FC9580);
    sub_192F9719C();
    sub_192F9546C();
    type metadata accessor for DeveloperSilentAuthTokenResult(0);
    OUTLINED_FUNCTION_1_43();
    sub_192C9479C(v19, v20);
    v29 = sub_192F9547C();
    v31 = v30;
    v32 = sub_192F95B5C();
    [v17 storeData_];

    sub_19290CA6C(v29, v31);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_94();

    v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v33, a11, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192C89010()
{
  *(v1 + 80) = *(v0 + 16);
  sub_192C94690(v1 + 80, v1 + 96);
  *(v1 + 112) = *(v1 + 80);
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_192C890C4;

  return sub_192C787C8(v1 + 16);
}

uint64_t sub_192C890C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C891BC()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 24) != 1)
  {
    sub_19292E1F0(v0 + 16, &qword_1EAE148C0, &qword_192FC8920);
  }

  sub_192C946EC(v0 + 80);
  OUTLINED_FUNCTION_7();

  return v1();
}

uint64_t sub_192C8925C()
{
  OUTLINED_FUNCTION_3();
  sub_192C946EC(v0 + 80);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192C892B8(uint64_t a1)
{
  if (qword_1ED6DE070 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_192FBCD90;
  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE149B8, qword_192FC8CC0);
  v5 = swift_allocObject();
  v27[0] = v5;
  v6 = *(v1 + 16);
  v5[1] = *v1;
  v5[2] = v6;
  v5[3] = *(v1 + 32);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_192FBCD50;
  sub_19286C588(v27, v26);
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  swift_getDynamicType();
  sub_1928F9340(v1, &v22, &qword_1EAE149B8, qword_192FC8CC0);

  v22 = sub_192F979EC();
  v23 = v10;
  MEMORY[0x193B10CE0](5972026, 0xE300000000000000);
  MEMORY[0x193B10CE0](v8, v7);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v11 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E6158];
  __swift_destroy_boxed_opaque_existential_0(v26);
  *(v9 + 48) = 0u;
  *(v9 + 32) = 0u;
  sub_19286D180(&v22, v9 + 32);
  *(v9 + 64) = 0;
  *(v4 + 32) = v9;
  __swift_destroy_boxed_opaque_existential_0(v27);
  *(v4 + 40) = a1;

  v12 = sub_192F96E5C();
  if (os_log_type_enabled(v3, v12))
  {
    v13 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v14 = byte_1ED6DE5D8;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v22 = v4;
    v23 = sub_192BB97CC;
    v24 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v16 = sub_192F9674C();
    v18 = v17;

    objc_autoreleasePoolPop(v13);
    v19 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_192FBCD50;
    *(v20 + 56) = v11;
    *(v20 + 64) = sub_1928FDB30();
    *(v20 + 32) = v16;
    *(v20 + 40) = v18;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v3, v12, v20);

    objc_autoreleasePoolPop(v19);
  }
}

uint64_t sub_192C89638()
{
  v0 = sub_192F9750C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_192C8968C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, id a5@<X4>, void *a6@<X8>)
{
  v12 = a3;
  v46 = a1;
  v47 = a2;
  v13 = sub_192C7B3D4(a1, a2);
  v15 = v14;
  v16 = [objc_opt_self() currentProcess];
  v17 = v16;
  v48 = a4;
  v44 = v16;
  v45 = a3;
  if (a4)
  {
    [v16 setAccountMediaType_];
    if (!a5)
    {
      goto LABEL_8;
    }

LABEL_11:

    v27 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = v12;
  if ([v18 ams_isSandboxAccount])
  {
    [v17 setAccountMediaType_];
  }

  if (a5)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!a3)
  {
LABEL_12:
    v27 = 1;
LABEL_13:
    v28 = objc_allocWithZone(MEMORY[0x1E695DF90]);
    a5 = a5;
    v26 = [v28 init];
    if (v27)
    {
      sub_192874CD0(0, &qword_1EAE12350, off_1E73B0A30);
      v29 = sub_19294D4D0(0x73746E756F636341, 0xE800000000000000, 49, 0xE100000000000000);
      v30 = type metadata accessor for SendableBag();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR___AMSSendableBag_wrappedBag] = v29;
      v51.receiver = v31;
      v51.super_class = v30;
      v25 = objc_msgSendSuper2(&v51, sel_init);
    }

    else
    {
      v25 = a5;
    }

    goto LABEL_16;
  }

  sub_192874CD0(0, &qword_1EAE12350, off_1E73B0A30);
  v19 = v12;
  v20 = v17;
  v21 = sub_192C7B494(0x73746E756F636341, 0xE800000000000000, 49, 0xE100000000000000, v17, v19);
  v22 = type metadata accessor for SendableBag();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___AMSSendableBag_wrappedBag] = v21;
  v49.receiver = v23;
  v49.super_class = v22;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v49, sel_init);
  v26 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];

LABEL_16:
  if (v15)
  {
    v32 = v15;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  if (v15)
  {
    v33 = v13;
  }

  else
  {
    v33 = 0;
  }

  v34 = type metadata accessor for DeveloperSilentAuthTokenDelegate();
  v35 = objc_allocWithZone(v34);
  *&v35[OBJC_IVAR____TtC18AppleMediaServicesP33_68239C40601534D7947471707625281632DeveloperSilentAuthTokenDelegate_bag] = v25;
  v50.receiver = v35;
  v50.super_class = v34;
  v36 = v25;
  v37 = objc_msgSendSuper2(&v50, sel_init);
  v38 = AMSSetLogKeyIfNeeded();
  v39 = sub_192F967CC();
  v41 = v40;

  v42 = v26;
  v43 = v36;

  *a6 = v45;
  a6[1] = v33;
  a6[2] = v32;
  a6[3] = v46;
  a6[4] = v47;
  a6[5] = v39;
  a6[6] = v41;
  a6[7] = v48;
  a6[8] = v42;
  a6[9] = v43;
  a6[10] = v37;
  a6[11] = 0xD000000000000035;
  a6[12] = 0x800000019301F8A0;
  a6[13] = v42;
  a6[14] = v43;
  a6[15] = v39;
  a6[16] = v41;
}

uint64_t sub_192C899E0(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = v2;
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_192C89A88;

  return sub_192C89D44(a1, a2);
}

uint64_t sub_192C89A88()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C89B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  sub_19287AEE0();
  v35 = v14;
  OUTLINED_FUNCTION_38_6();
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v16();
  sub_1928F9340(v11 + 56, v11 + 88, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_59_6();
  sub_19286D180(v11 + 88, v10);
  OUTLINED_FUNCTION_67_7();
  v17 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v17 = v33;
  }

  OUTLINED_FUNCTION_91_3();
  if (v19)
  {
    OUTLINED_FUNCTION_20(v18);
    sub_19287AEE0();
    v17 = v34;
  }

  *(v17 + 16) = v12;
  OUTLINED_FUNCTION_16_20(v17 + 40 * v13);
  sub_19292E1F0(v11 + 56, &unk_1EAE131B0, &qword_192FBD860);
  v20._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v21, v22, v23, sub_1928FA5C4);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_123_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v17, a10);
}

uint64_t sub_192C89D44(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  v3[29] = swift_task_alloc();
  v4 = sub_192F95A8C();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C89E40, 0, 0);
}

uint64_t sub_192C89E40()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v3 = OUTLINED_FUNCTION_90(v2);
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 16) = xmmword_192FBCD50;
  v1[21] = v4;
  v5 = OUTLINED_FUNCTION_82_4();
  *(v5 + 144) = v6;
  v1[19] = v0;
  OUTLINED_FUNCTION_39_12(v5 + 144);
  *(v3 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v3, v7, v8, sub_192BB97CC);

  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[33] = v9;
  *v9 = v10;
  v9[1] = sub_192C89F60;

  return sub_192C92BF0();
}

uint64_t sub_192C89F60()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 232);
  v12 = *(v10 + 240);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19292E1F0(v11, &unk_1EAE144B0, &unk_192FC78B0);
    v13 = sub_192F9679C();
    v14 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    AMSError(v15, v16, v17, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_123_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = *(v10 + 216);
    v28 = *(v10 + 224);
    v29 = *(v10 + 208);
    (*(*(v10 + 248) + 32))(*(v10 + 256), v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200, &unk_192FC22D0);
    inited = swift_initStackObject();
    v31 = OUTLINED_FUNCTION_19_19(inited, xmmword_192FBCD90);
    *(v10 + 176) = *(v28 + 24);
    v32 = MEMORY[0x1E69E6158];
    v31[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v31[3] = *(v10 + 176);
    v31[5].n128_u64[0] = 0xD000000000000018;
    v31[5].n128_u64[1] = 0x8000000193017990;
    v31[7].n128_u64[1] = v32;
    if (v27)
    {
      v33 = v29;
    }

    else
    {
      v33 = 0;
    }

    v34 = 0xE000000000000000;
    if (v27)
    {
      v34 = v27;
    }

    v31[6].n128_u64[0] = v33;
    v31[6].n128_u64[1] = v34;
    sub_192C94740(v10 + 176, v10 + 192);

    OUTLINED_FUNCTION_102();
    *(v10 + 280) = sub_192F966CC();
    v35 = swift_task_alloc();
    *(v10 + 288) = v35;
    *v35 = v10;
    v35[1] = sub_192C8A310;
    OUTLINED_FUNCTION_51(*(v10 + 256));
    OUTLINED_FUNCTION_111_2();
    OUTLINED_FUNCTION_123_0();

    return sub_192C90C8C(v36, v37, v38);
  }
}

uint64_t sub_192C8A2A8()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192C8A310()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 296) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C8A444()
{
  OUTLINED_FUNCTION_3();
  (*(v0[31] + 8))(v0[32], v0[30]);

  OUTLINED_FUNCTION_7();

  return v1();
}

uint64_t sub_192C8A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v14 = sub_192C925E0(*(v12 + 296));
  v15 = *(v12 + 296);
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_113_1(0x6F4E206E656B6F54);
    v17 = sub_192F9679C();
    v18 = sub_192F958CC();
    OUTLINED_FUNCTION_103_3(v18);

    swift_willThrow();
    v19 = OUTLINED_FUNCTION_39();
LABEL_5:
    v21(v19, v20);
    goto LABEL_7;
  }

  v22 = sub_192C92874(*(v12 + 296));
  v23 = *(v12 + 296);
  v25 = *(v12 + 248);
  v24 = *(v12 + 256);
  v26 = *(v12 + 240);
  if (v22)
  {
    v27 = sub_192F9679C();
    v28 = sub_192F9679C();
    v29 = sub_192F958CC();
    OUTLINED_FUNCTION_103_3(v29);

    swift_willThrow();
    v21 = *(v25 + 8);
    v19 = v24;
    v20 = v26;
    goto LABEL_5;
  }

  swift_willThrow();
  (*(v25 + 8))(v24, v26);
LABEL_7:

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_31();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_192C8A690(uint64_t a1)
{
  v3 = a1;
  *(v2 + 152) = v1;
  v4 = swift_task_alloc();
  *(v2 + 160) = v4;
  *v4 = v2;
  v4[1] = sub_192C8A728;

  return sub_192C8A9E4(v3);
}

uint64_t sub_192C8A728()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C8A83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  sub_19287AEE0();
  v35 = v14;
  OUTLINED_FUNCTION_38_6();
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v16();
  sub_1928F9340(v11 + 56, v11 + 88, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_59_6();
  sub_19286D180(v11 + 88, v10);
  OUTLINED_FUNCTION_67_7();
  v17 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v17 = v33;
  }

  OUTLINED_FUNCTION_91_3();
  if (v19)
  {
    OUTLINED_FUNCTION_20(v18);
    sub_19287AEE0();
    v17 = v34;
  }

  *(v17 + 16) = v12;
  OUTLINED_FUNCTION_16_20(v17 + 40 * v13);
  sub_19292E1F0(v11 + 56, &unk_1EAE131B0, &qword_192FBD860);
  v20._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v21, v22, v23, sub_1928FA5C4);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_123_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v17, a10);
}

uint64_t sub_192C8A9E4(char a1)
{
  *(v2 + 272) = v1;
  *(v2 + 376) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  *(v2 + 280) = swift_task_alloc();
  v3 = sub_192F95A8C();
  *(v2 + 288) = v3;
  *(v2 + 296) = *(v3 - 8);
  *(v2 + 304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C8AAE0, 0, 0);
}

uint64_t sub_192C8AAE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v1[39] = v2;
  v3 = OUTLINED_FUNCTION_90(v2);
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 16) = xmmword_192FBCD50;
  v1[21] = v4;
  v5 = OUTLINED_FUNCTION_82_4();
  *(v5 + 144) = v6;
  v1[19] = v0;
  OUTLINED_FUNCTION_39_12(v5 + 144);
  *(v3 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v3, v7, v8, sub_192BB97CC);

  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[40] = v9;
  *v9 = v10;
  v9[1] = sub_192C8AC04;

  return sub_192C92A00();
}

uint64_t sub_192C8AC04()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8ACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  v11 = *(v10 + 280);
  OUTLINED_FUNCTION_111_2();
  if (__swift_getEnumTagSinglePayload(v12, v13, v14) == 1)
  {
    sub_19292E1F0(v11, &unk_1EAE144B0, &unk_192FC78B0);
    v15 = sub_192F9679C();
    v16 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    v20 = AMSError(v17, v18, v19, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();

    return v21();
  }

  else
  {
    v23 = *(v10 + 376);
    OUTLINED_FUNCTION_65_0();
    v24();
    if (v23)
    {
      v25 = *(v10 + 272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200, &unk_192FC22D0);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_19_19(inited, xmmword_192FBCD90);
      v28 = *(v25 + 24);
      v27 = *(v25 + 32);
      v29 = MEMORY[0x1E69E6158];
      inited[3].n128_u64[0] = v28;
      inited[3].n128_u64[1] = v27;
      inited[4].n128_u64[1] = v29;
      strcpy(&inited[5], "hasConsented");
      inited[5].n128_u8[13] = 0;
      inited[5].n128_u16[7] = -5120;
      inited[7].n128_u64[1] = MEMORY[0x1E69E6370];
      inited[6].n128_u8[0] = 1;

      OUTLINED_FUNCTION_48();
      *(v10 + 336) = sub_192F966CC();
      v30 = swift_task_alloc();
      *(v10 + 344) = v30;
      *v30 = v10;
      v30[1] = sub_192C8B09C;
      OUTLINED_FUNCTION_51(*(v10 + 304));
      OUTLINED_FUNCTION_111_2();

      return sub_192C90C8C(v31, v32, v33);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_47_11(*(v10 + 312));
      v35 = MEMORY[0x1E69E6158];
      *(v34 + 16) = xmmword_192FBCD50;
      *(v10 + 200) = v35;
      v36 = OUTLINED_FUNCTION_82_4();
      *(v36 + 176) = v37;
      *(v10 + 184) = v23;
      OUTLINED_FUNCTION_39_12(v36 + 176);
      *(v34 + 64) = 0;
      OUTLINED_FUNCTION_0_36();
      sub_192C904C8(v34, v38, v39, sub_192BB97CC);

      v40 = swift_task_alloc();
      *(v10 + 360) = v40;
      *v40 = v10;
      v40[1] = sub_192C8B1D0;

      return sub_192C89D44(0, 0);
    }
  }
}

uint64_t sub_192C8B034()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192C8B09C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 352) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C8B1D0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8B2C8()
{
  OUTLINED_FUNCTION_3();
  v0 = OUTLINED_FUNCTION_100_4();
  v1(v0);

  OUTLINED_FUNCTION_7();

  return v2();
}

uint64_t sub_192C8B338()
{
  OUTLINED_FUNCTION_3();
  (*(v0[37] + 8))(v0[38], v0[36]);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192C8B3B8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = v0[46];
  v0[30] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  type metadata accessor for AMSError(0);
  OUTLINED_FUNCTION_68_7();
  if (swift_dynamicCast())
  {
    v3 = v0[31];
    v0[32] = v3;
    sub_192C9479C(&qword_1EAE120F0, type metadata accessor for AMSError);
    sub_192F9588C();
    if (v0[33] == 2)
    {
      v4 = v0[46];
      v5 = OUTLINED_FUNCTION_90(v0[39]);
      v6 = MEMORY[0x1E69E6158];
      *(v5 + 16) = xmmword_192FBCD50;
      v0[29] = v6;
      v7 = OUTLINED_FUNCTION_82_4();
      *(v7 + 208) = v8;
      v0[27] = 0x8000000193020470;
      *(v5 + 48) = 0u;
      *(v5 + 32) = 0u;
      sub_19286D180(v7 + 208, v5 + 32);
      *(v5 + 64) = 0;
      OUTLINED_FUNCTION_0_36();
      sub_192C904C8(v5, v9, v10, sub_192BB97CC);

      v11 = OUTLINED_FUNCTION_100_4();
      v12(v11);

      OUTLINED_FUNCTION_7();
      goto LABEL_6;
    }
  }

  swift_willThrow();
  v13 = OUTLINED_FUNCTION_48();
  v14(v13);

  OUTLINED_FUNCTION_43();
LABEL_6:
  OUTLINED_FUNCTION_17_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_192C8B5C0(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = v2;
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_192C8B66C;

  return sub_192C8B928(a1, a2);
}

uint64_t sub_192C8B66C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C8B780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  sub_19287AEE0();
  v35 = v14;
  OUTLINED_FUNCTION_38_6();
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v16();
  sub_1928F9340(v11 + 56, v11 + 88, &unk_1EAE131B0, &qword_192FBD860);
  OUTLINED_FUNCTION_59_6();
  sub_19286D180(v11 + 88, v10);
  OUTLINED_FUNCTION_67_7();
  v17 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v17 = v33;
  }

  OUTLINED_FUNCTION_91_3();
  if (v19)
  {
    OUTLINED_FUNCTION_20(v18);
    sub_19287AEE0();
    v17 = v34;
  }

  *(v17 + 16) = v12;
  OUTLINED_FUNCTION_16_20(v17 + 40 * v13);
  sub_19292E1F0(v11 + 56, &unk_1EAE131B0, &qword_192FBD860);
  v20._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v21, v22, v23, sub_1928FA5C4);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_123_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v17, a10);
}

uint64_t sub_192C8B928(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  v3[70] = swift_task_alloc();
  v4 = sub_192F95A8C();
  v3[71] = v4;
  v3[72] = *(v4 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = type metadata accessor for DeveloperSilentAuthTokenResult(0);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C8BA70, 0, 0);
}

uint64_t sub_192C8BA70()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v1[78] = v2;
  v3 = OUTLINED_FUNCTION_90(v2);
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 16) = xmmword_192FBCD50;
  v1[32] = v4;
  v5 = OUTLINED_FUNCTION_82_4();
  *(v5 + 232) = v6;
  v1[30] = v0;
  OUTLINED_FUNCTION_39_12(v5 + 232);
  *(v3 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v3, v7, v8, sub_192BB97CC);

  v9 = swift_task_alloc();
  v1[79] = v9;
  *v9 = v1;
  OUTLINED_FUNCTION_76_5(v9);

  return sub_192C8F870();
}

uint64_t sub_192C8BB8C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[80] = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_57_8();
    OUTLINED_FUNCTION_17_0();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = v3[68];
    v17 = swift_task_alloc();
    if (v16)
    {
      v3[99] = v17;
      *v17 = v5;
      v18 = sub_192C8D7F4;
    }

    else
    {
      v3[81] = v17;
      *v17 = v5;
      v18 = sub_192C8BD48;
    }

    v17[1] = v18;
    OUTLINED_FUNCTION_17_0();

    return sub_192C908CC();
  }
}

uint64_t sub_192C8BD48()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 656) = v0;

  if (!v0)
  {
    *(v5 + 664) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C8BE50()
{
  OUTLINED_FUNCTION_5();
  if (*(v0 + 664) > 0.0 && (v1 = OUTLINED_FUNCTION_50_8(*(v0 + 552)), *(v0 + 96) = v3, *(v0 + 112) = v2, *(v0 + 128) = v1, v4 = sub_192F9679C(), v5 = [objc_opt_self() processIsEntitledToUse_], v4, v5))
  {
    v6 = *(v0 + 552);
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    OUTLINED_FUNCTION_15_19(&dword_192FC9560);
    v16 = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v0 + 672) = v10;
    *v10 = v11;
    v10[1] = sub_192C8C044;
    v12 = *(v0 + 640);
    v13 = *(v0 + 616);

    return v16(v13, v7, v8, v12);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 792) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_76_5(v15);

    return sub_192C908CC();
  }
}

uint64_t sub_192C8BFBC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C8C044()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 680) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8C13C()
{
  OUTLINED_FUNCTION_178();
  v1 = *(v0 + 592);
  sub_19287AEE0();
  v22 = v2;
  OUTLINED_FUNCTION_38_6();
  v3._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 480) = v1;
  __swift_allocate_boxed_opaque_existential_0((v0 + 456));
  v4 = OUTLINED_FUNCTION_102_3();
  sub_192C87324(v4, v5);
  sub_1928F9340(v0 + 456, v0 + 488, &unk_1EAE131B0, &qword_192FBD860);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  sub_19286D180(v0 + 488, v0 + 192);
  OUTLINED_FUNCTION_67_7();
  v6 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v6 = v20;
  }

  v7 = *(v6 + 16);
  if (v7 >= *(v6 + 24) >> 1)
  {
    sub_19287AEE0();
    v6 = v21;
  }

  v8 = *(v0 + 640);
  v9 = *(v0 + 592);
  v10 = *(v0 + 536);
  *(v6 + 16) = v7 + 1;
  OUTLINED_FUNCTION_16_20(v6 + 40 * v7);
  sub_19292E1F0(v0 + 456, &unk_1EAE131B0, &qword_192FBD860);
  v11._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v6, v12, v13, sub_192BB97CC);

  v10[3] = v9;
  OUTLINED_FUNCTION_1_43();
  v10[4] = sub_192C9479C(v14, v15);
  __swift_allocate_boxed_opaque_existential_0(v10);
  v16 = OUTLINED_FUNCTION_102_3();
  sub_192C87BA0(v16, v17);

  OUTLINED_FUNCTION_6_33();

  OUTLINED_FUNCTION_7();

  return v18();
}

uint64_t sub_192C8C37C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[85];
  v2 = OUTLINED_FUNCTION_107_3();
  v3 = OUTLINED_FUNCTION_90(v2);
  *(v3 + 16) = xmmword_192FBCD50;
  v0[56] = MEMORY[0x1E69E6158];
  v0[53] = 0xD00000000000001BLL;
  v0[54] = 0x8000000193020270;
  OUTLINED_FUNCTION_12_1(v3);
  sub_19286D180((v0 + 53), v4);
  *(v3 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v3, v5, v6, sub_192BB97CC);

  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[86] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_37_11(v7);

  return sub_192C90A78();
}

uint64_t sub_192C8C47C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 696) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8C574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v11 = v10[70];
  OUTLINED_FUNCTION_111_2();
  if (__swift_getEnumTagSinglePayload(v12, v13, v14) == 1)
  {
    v15 = v10[80];
    sub_19292E1F0(v11, &unk_1EAE144B0, &unk_192FC78B0);
    v16 = sub_192F9679C();
    v17 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    AMSError(v18, v19, v20, 0);

    swift_willThrow();
    OUTLINED_FUNCTION_6_33();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_17_0();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v30 = v10[69];
    OUTLINED_FUNCTION_65_0();
    v31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200, &unk_192FC22D0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_19_19(inited, xmmword_192FBCD50);
    v33 = *(v30 + 24);
    v10[88] = v33;
    v34 = *(v30 + 32);
    v10[89] = v34;
    inited[4].n128_u64[1] = MEMORY[0x1E69E6158];
    inited[3].n128_u64[0] = v33;
    inited[3].n128_u64[1] = v34;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_48();
    v10[90] = sub_192F966CC();
    v35 = swift_task_alloc();
    v10[91] = v35;
    *v35 = v10;
    v35[1] = sub_192C8C83C;
    OUTLINED_FUNCTION_51(v10[73]);
    OUTLINED_FUNCTION_17_0();

    return sub_192C90C8C(v36, v37, v38);
  }
}

uint64_t sub_192C8C7B4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C8C83C()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v2 + 736) = v6;
  *(v2 + 744) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8C974()
{
  v3 = [*(v0 + 736) responseStatusCode];
  v4 = *(v0 + 736);
  if (v3 == 204)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C68, &unk_192FC9548);
    OUTLINED_FUNCTION_68_7();
    sub_1928FDAEC(v5, v6, v7);
    v8 = swift_allocError();
    v9 = v8;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  v1 = &selRef_isAnonymous;
  if ([*(v0 + 736) object])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  *(v0 + 296) = v29;
  *(v0 + 312) = v30;
  if (!*(v0 + 320))
  {

    sub_19292E1F0(v0 + 296, &unk_1EAE131B0, &qword_192FBD860);
LABEL_12:
    v10 = *(v0 + 736);
    v2 = 0xD000000000000010;
    v11 = sub_192F9679C();
    sub_192F972BC();
    MEMORY[0x193B10CE0](0xD000000000000036, 0x80000001930201E0);
    if ([v10 object])
    {
      sub_192F9715C();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
    }

    v4 = *(v0 + 736);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131B0, &qword_192FBD860);
    v12 = sub_192F9682C();
    MEMORY[0x193B10CE0](v12);

    v13 = sub_192F9679C();

    v8 = AMSError(301, v11, v13, 0);

    v9 = v8;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0, &unk_192FBEF80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v9 = *(v0 + 744);
  v1 = *(v0 + 528);
  DeveloperSilentAuthTokenResult.init(withDictionary:account:bundleId:)(v1, *(v0 + 640), *(v0 + 704), *(v0 + 712), *(v0 + 600));
  if (v9)
  {
    v8 = v9;
    v4 = *(v0 + 736);
LABEL_17:

    if (sub_192C925E0(v8) & 1) != 0 || (OUTLINED_FUNCTION_70_4(), v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200), v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C68, &unk_192FC9548), (OUTLINED_FUNCTION_49_10(v14)))
    {
      OUTLINED_FUNCTION_31_11();
      OUTLINED_FUNCTION_1_43();
      v17 = sub_192C9479C(v15, v16);
      OUTLINED_FUNCTION_116_1(v17);
      v18 = OUTLINED_FUNCTION_73_6();
      if (!v9)
      {
        OUTLINED_FUNCTION_3_40(v18);

        v21 = sub_192F95CFC();
        OUTLINED_FUNCTION_32_11(v21);

        v22 = OUTLINED_FUNCTION_53_9();
        v23(v22);
        OUTLINED_FUNCTION_6_33();

        OUTLINED_FUNCTION_7();
LABEL_24:

        return v24();
      }

      v19 = OUTLINED_FUNCTION_11_26();
      v20(v19);

      OUTLINED_FUNCTION_117_2();
    }

    else
    {
      OUTLINED_FUNCTION_33_12();
      swift_willThrow();

      v25 = OUTLINED_FUNCTION_52_8();
      v26(v25);
    }

    OUTLINED_FUNCTION_16_21();

    OUTLINED_FUNCTION_43();
    goto LABEL_24;
  }

  v28 = swift_task_alloc();
  *(v0 + 752) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_76_5(v28);

  return sub_192C908CC();
}